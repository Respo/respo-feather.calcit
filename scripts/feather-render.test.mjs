import assert from 'node:assert/strict';
import test from 'node:test';

import { _$n__$M_ } from '../js-out/calcit.core.mjs';
import { comp_container } from '../js-out/feather.comp.container.mjs';
import { comp_icon } from '../js-out/feather.core.mjs';
import { store } from '../js-out/feather.schema.mjs';
import { new_reel, toggle_display } from '../js-out/reel.typed.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

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
