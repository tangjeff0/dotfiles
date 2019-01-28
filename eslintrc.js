module.exports = {
  "env": {
    "browser": true,
    "commonjs": true,
    // "es9": true,
    "node": true
  },
  'globals': {
    "@": true,
    "$": true,
  },
  "extends": ["eslint:recommended", 'plugin:react/recommended'],
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
    "react/jsx-uses-vars": 1,
    "react/jsx-uses-react": 1,
    "indent": [
      1,
      2
    ],
    "linebreak-style": [
      "error",
      "unix"
    ],
    "quotes": [
      "error",
      "single"
    ],
    "semi": [
      "error",
      "never"
    ],
    "no-console": 1,
    "no-unused-vars": 1,
  }
};
