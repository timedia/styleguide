/*
 * @typescript-eslint/eslint-plugin パッケージで定義されたルールを有効化/無効化する
 */
module.exports = {
  extends: [
    "plugin:@typescript-eslint/recommended",
  ],
  parser: "@typescript-eslint/parser",
  parserOptions: {
    "ecmaVersion": "latest",
    "sourceType": "module",
  },
};

