import assert from 'node:assert/strict';
import test from 'node:test';
import { execFileSync, spawnSync } from 'node:child_process';
import { copyFile, mkdir, mkdtemp, readFile, rm, symlink } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

import { _$n__$M_ } from '../js-out/calcit.core.mjs';
import { parse_cirru_edn } from '../js-out/calcit.core.mjs';
import { comp_container } from '../js-out/feather.comp.container.mjs';
import { comp_icon } from '../js-out/feather.core.mjs';
import { store } from '../js-out/feather.schema.mjs';
import { new_reel, toggle_display } from '../js-out/reel.typed.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const binary = process.env.CALCIT_BIN ?? 'calcit';
const cliOptions = { encoding: 'utf8', timeout: 60000, maxBuffer: 16 * 1024 * 1024,
  stdio: ['ignore', 'pipe', 'pipe'] };
const invoke = (snapshot, ...args) => execFileSync(binary, [snapshot, ...args], cliOptions);
const transact = (snapshot, operations) => {
  const args = ['edit', 'transaction', '--code', JSON.stringify(operations)];
  const preview = JSON.parse(invoke(snapshot, ...args, '--dry-run', '--format', 'json'));
  invoke(snapshot, ...args, '--expect-revision', preview.scoped_revision, '--format', 'edn');
};

test('canonical attached tests replay on native and generated JavaScript', async () => {
  const canonical = resolve('calcit.cirru');
  const before = await readFile(canonical);
  const selected = JSON.parse(invoke(canonical, 'test', '--list', '--require-match', '--format', 'json'));
  assert.ok(selected.tests.length > 0, 'attached replay must not silently select zero tests');
  await mkdir('.calcit', { recursive: true });
  const directory = await mkdtemp(resolve('.calcit/feather-attached-'));
  const snapshot = join(directory, 'calcit.cirru');
  try {
    await copyFile(canonical, snapshot);
    await copyFile('deps.cirru', join(directory, 'deps.cirru'));
    await mkdir(join(directory, '.calcit'));
    await symlink(resolve('.calcit/modules'), join(directory, '.calcit/modules'), 'dir');
    await symlink(resolve('node_modules'), join(directory, 'node_modules'), 'dir');
    invoke(snapshot, 'docs', 'agents', '--contract');
    // Native replay must not rewrite the app's ordinary JavaScript render graph.
    const operations = [['config', 'set', 'mode', 'native']];
    const calls = [];
    for (const [index, item] of selected.tests.entries()) {
      const separator = item.id.indexOf('#');
      const owner = item.id.slice(0, separator);
      const name = item.id.slice(separator + 1);
      const definition = JSON.parse(invoke(snapshot, 'query', 'def', owner, '--format', 'json')).data;
      const attached = definition.tests.find((candidate) => candidate.name === name);
      assert.ok(attached, `missing canonical AST for ${item.id}`);
      const target = `${owner.slice(0, owner.indexOf('/'))}/replay-attached-${index}`;
      operations.push(['edit', 'def', target, '--input-format', 'json-ast', '--code',
        JSON.stringify(['defn', target.split('/')[1], [], attached.code, '&unit'])]);
      operations.push(['edit', 'schema', target, '--input-format', 'json-ast', '--code',
        JSON.stringify(['::', "'Fn", ['{}', [':args', ['[]']], [':return', "'Unit"]]])]);
      calls.push([target]);
    }
    const entry = 'feather.core/replay-attached!';
    operations.push(['edit', 'def', entry, '--input-format', 'json-ast', '--code',
      JSON.stringify(['defn', 'replay-attached!', [], ...calls, '&unit'])]);
    operations.push(['edit', 'schema', entry, '--input-format', 'json-ast', '--code',
      JSON.stringify(['::', "'Fn", ['{}', [':args', ['[]']], [':return', "'Unit"]]])]);
    transact(snapshot, operations);
    const roots = ['--init-fn', entry, '--reload-fn', entry];
    invoke(snapshot, ...roots);
    const output = join(directory, 'js');
    invoke(snapshot, ...roots, '--emit-path', output, 'js');
    // A separate process prevents scratch trait registrations from replacing the render graph.
    execFileSync(process.execPath, ['--input-type=module', '--eval',
      `const tests = await import(${JSON.stringify(pathToFileURL(join(output, 'feather.core.mjs')).href)}); tests.replay_attached_$x_();`],
      { timeout: 60000, stdio: 'inherit' });
    console.log(`Feather: ${selected.tests.length} canonical tests replayed on native/generated JS`);
  } finally {
    try {
      assert.deepEqual(await readFile(canonical), before, 'replay must preserve canonical Snapshot bytes');
    } finally {
      await rm(directory, { recursive: true, force: true });
    }
  }
});

test('a clean consumer loads only the library graph and retains its checked String result', async () => {
  const canonical = resolve('calcit.cirru');
  const original = await readFile(canonical);
  const directory = await mkdtemp(resolve('.calcit/feather-consumer-'));
  try {
    const library = join(directory, 'library');
    const consumer = join(directory, 'consumer');
    for (const project of [library, consumer]) {
      await mkdir(join(project, '.calcit/modules'), { recursive: true });
      await copyFile(canonical, join(project, 'calcit.cirru'));
      await copyFile('deps.cirru', join(project, 'deps.cirru'));
      await symlink(resolve('node_modules'), join(project, 'node_modules'), 'dir');
      for (const name of ['respo.calcit', 'js-ffi']) {
        await symlink(resolve('.calcit/modules', name), join(project, '.calcit/modules', name), 'dir');
      }
    }
    const librarySnapshot = join(library, 'calcit.cirru');
    invoke(librarySnapshot, '--check-only', '--ns', 'feather.core');
    invoke(librarySnapshot, 'test', 'feather.core/icon-color-text', '--require-match');
    for (const args of [['--entry', 'demo', '--check-only'], ['--check-only', '--all-defs']]) {
      const rejected = spawnSync(binary, [librarySnapshot, ...args], cliOptions);
      assert.ifError(rejected.error);
      assert.notEqual(rejected.status, 0, 'an incomplete Demo must still fail');
      assert.match(rejected.stdout + rejected.stderr, /respo-ui|reel/);
    }
    await symlink(library, join(consumer, '.calcit/modules/feather.calcit'), 'dir');
    const snapshot = join(consumer, 'calcit.cirru');
    const config = JSON.parse(invoke(snapshot, 'config', 'show', '--format', 'json')).data;
    const defaults = config.entries.find(entry => entry.name === 'default');
    const namespaces = JSON.parse(invoke(snapshot, 'query', 'ns', '--format', 'json')).data.namespaces;
    invoke(snapshot, 'docs', 'agents', '--contract');
    // Derive an independent consumer from the opaque template using only
    // guarded edits; no local Feather namespaces may shadow the dependency.
    transact(snapshot, [
      ['config', 'unset', 'entry', '--entry', 'demo'],
      ['config', 'set', 'init-fn', 'consumer.main/main!'],
      ['config', 'set', 'reload-fn', 'consumer.main/main!'],
      ...Object.keys(defaults.type_slots).map(slot => ['config', 'rm-type-slot', slot]),
      ...defaults.modules.map(module => ['config', 'rm-module', module]),
      ...namespaces.map(namespace => ['edit', 'rm-ns', namespace]),
      ['config', 'set', 'package', 'consumer'],
      ['edit', 'add-ns', 'consumer.main'],
      ['edit', 'add-import', 'consumer.main', '--input-format', 'json-ast', '--code',
        JSON.stringify(['feather.core', ':refer', ['icon-color-text']])],
      ['edit', 'def', 'consumer.main/main!', '--input-format', 'json-ast', '--code',
        JSON.stringify(['defn', 'main!', [], ['assert=', '|red', ['icon-color-text', ':red']], '&unit'])],
      ['edit', 'schema', 'consumer.main/main!', '--input-format', 'cirru', '--code',
        "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)"],
      ['config', 'set', 'mode', 'native'],
      ['config', 'add-module', 'feather.calcit/'],
    ]);
    const consumerNamespaces = JSON.parse(invoke(snapshot, 'query', 'ns', '--format', 'json')).data.namespaces;
    assert.deepEqual(consumerNamespaces, ['consumer.$meta', 'consumer.main']);
    invoke(snapshot, '--check-only', '--all-defs');
    invoke(snapshot);
    const output = join(consumer, 'js');
    invoke(snapshot, '--emit-path', output, 'js');
    execFileSync(process.execPath, ['--input-type=module', '--eval',
      `const consumer = await import(${JSON.stringify(pathToFileURL(join(output, 'consumer.main.mjs')).href)}); consumer.main_$x_();`],
      { timeout: 60000, stdio: 'inherit' });
    transact(snapshot, [['edit', 'def', 'consumer.main/main!', '--overwrite', '--input-format', 'json-ast', '--code',
      JSON.stringify(['defn', 'main!', [], ['+', ['icon-color-text', ':red'], '1'], '&unit'])]]);
    const rejected = spawnSync(binary, [snapshot, '--check-only'], cliOptions);
    assert.ifError(rejected.error);
    assert.notEqual(rejected.status, 0, 'a public String result must not satisfy numeric addition');
    assert.match(rejected.stdout + rejected.stderr, /[Ss]tring|:string/);
    assert.match(rejected.stdout + rejected.stderr, /[Nn]umber|:number/);
  } finally {
    assert.deepEqual(await readFile(canonical), original, 'consumer acceptance must not rewrite library source');
    await rm(directory, { recursive: true, force: true });
  }
});

test('renders a Feather icon from the package icons map', () => {
  const html = make_string(comp_icon('activity', _$n__$M_(), null));
  assert.match(html, /<svg\b/);
  assert.match(html, /<polyline\b/);
  assert.doesNotMatch(html, /No icon:/);
});

test('renders the icon gallery with a typed Reel state', () => {
  const html = make_string(comp_container(toggle_display(new_reel(store))));
  assert.match(html, /<svg\b/);
  assert.match(html, /activity/);
  assert.doesNotMatch(html, /No icon:/);
});

for (const [color, expected] of [
  ['nil', 'blue'], ['false', 'blue'], [':red', 'red'], ['|#123456', '#123456'],
  ['|', ''], ['0', '0'], ['true', 'true'], ['|蓝色😀', '蓝色😀'], ['12.5', '12.5'],
]) {
  test(`preserves SVG color for ${color}`, () => {
    const options = parse_cirru_edn(`{} (:color ${color})`);
    const html = make_string(comp_icon('activity', options, null));
    assert.ok(html.includes(`color="${expected}"`));
    assert.match(html, /stroke="currentColor"/);
  });
}

test('preserves the unknown icon fallback and supplied class/style', () => {
  const options = parse_cirru_edn('{} (:class-name |consumer-icon) (:style $ {} (:opacity 0.5))');
  const rendered = make_string(comp_icon('activity', options, null));
  assert.match(rendered, /consumer-icon/);
  assert.match(rendered, /opacity:0.5/);
  const fallback = make_string(comp_icon('not-a-feather-icon', options, null));
  assert.match(fallback, /No icon: not-a-feather-icon/);
  assert.doesNotMatch(fallback, /<svg\b/);
});

for (const color of ['({})', '([])', '(#{})']) {
  test(`rejects collection color ${color} before SVG conversion`, () => {
    const options = parse_cirru_edn(`{} (:color ${color})`);
    assert.throws(() => comp_icon('activity', options, null),
      /\[Feather\/comp-icon\] expected color to be a text scalar/);
  });
}
