import assert from 'node:assert/strict';
import test from 'node:test';
import { execFileSync } from 'node:child_process';
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

test('canonical attached tests replay on native and generated JavaScript', async () => {
  const invoke = (snapshot, ...args) => execFileSync(process.env.CALCIT_BIN ?? 'calcit', [snapshot, ...args],
    { encoding: 'utf8', timeout: 60000, maxBuffer: 16 * 1024 * 1024,
      stdio: ['ignore', 'pipe', 'pipe'] });
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
    const args = ['edit', 'transaction', '--code', JSON.stringify(operations)];
    const preview = JSON.parse(invoke(snapshot, ...args, '--dry-run', '--format', 'json'));
    invoke(snapshot, ...args, '--expect-revision', preview.original_revision, '--format', 'edn');
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
