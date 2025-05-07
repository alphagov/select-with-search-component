module.exports = {
  extends: ['standard', 'prettier'],
  env: {
    browser: true,
    jasmine: true,
    es6: true
  },
  globals: {
    GOVUK: 'readonly'
  }
}
