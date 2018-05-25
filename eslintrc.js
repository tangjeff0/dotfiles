module.exports = {
  'env': {
    'browser': true,
    'es6': true,
    'node': true,
  },
  'parserOptions': {
    'ecmaFeatures': {
      'experimentalObjectRestSpread': true,
      'jsx': true,
    },
    'sourceType': 'module',
    'ecmaVersion': 8,
  },
  'plugins': [
    'react',
  ],
  'globals': {
    'global': false,
    'describe': false,
    'expect': false,
    'before': false,
    '$': false,
    'it': false,
  },
  'rules': {
    'comma-dangle': [0, 'always-multiline'],
    // 'indent': [1, 2],
    // 'indent': [1, 2, {'SwitchCase': 1}],
    'linebreak-style': ['error', 'unix'],
    'quotes': [0],
    'react/jsx-filename-extension': [1, {'extensions': ['.js', '.jsx']}],
    'semi': [0, 'never'],
    'no-debugger': [0],
    'no-underscore-dangle': [1, { 'allow' : ['_id'] }],
    'no-unused-vars': [1, {'vars': 'all', 'args': 'after-used', 'ignoreRestSiblings': false}],
    'no-console': 0,
  },
};
