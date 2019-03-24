module.exports = {
  "env": {
    "browser": true,
    "commonjs": true,
    "es6": true,
    "node": true,
    "jest": true
  },
  'globals': {
    "@": true,
    "$": true,
  },
  // "extends": ["eslint:recommended", 'plugin:react/recommended'],
  // "parser": "babel-eslint",
  // "plugins": [ "react", ],
  "parser": "@typescript-eslint/parser",
  "plugins": ["@typescript-eslint"],
  "parserOptions": {
    "ecmaFeatures": {
      "jsx": true
    },
    "ecmaVersion": 2018,
    "sourceType": "module"
  },
  "rules": {
    // "react/jsx-uses-vars": 1,
    // "react/jsx-uses-react": 1,
    "indent": [
      1,
      2
    ],
    "linebreak-style": [
      "error",
      "unix"
    ],
    "quotes": [
      0,
      "single"
    ],
    "semi": [
      1,
      "never"
    ],
    "no-console": 0,
    "no-unused-vars": 1,
  }
};
