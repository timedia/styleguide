/*
 * TypeScript を使わない/使えないプロジェクト向けのルールセット
 */
module.exports = {
  extends: [
    "./configs/eslint.js",
    "./configs/eslint-comments.js",
  ],
};
