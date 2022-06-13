/*
 * TypeScript を使うプロジェクト向けのルールセット
 */
module.exports = {
  extends: [
    "./configs/eslint.js",
    "./configs/eslint-comments.js",
    "./configs/typescript-eslint.js",
  ],
};
