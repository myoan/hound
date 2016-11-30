import React from 'react';
import renderer from 'react-test-renderer';

import RepoToolsPrivate from '../repo_tools_private.js';

it('renders appropriately', () => {
  const component = renderer.create(
    <RepoToolsPrivate />
  );

  let tree = component.toJSON();
  expect(tree).toMatchSnapshot();
});