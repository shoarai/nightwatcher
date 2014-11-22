module.exports =
  load: ->
    this.client
      .url 'http://www.bing.com'
      .waitForElementVisible 'body', 1000
      .assert.title 'Bing'

  search: (query) ->
    this.client
      .assert.visible 'input[type=search]'
      .setValue 'input[type=search]', query
      .waitForElementVisible 'input[name=go]', 1000
      .click 'input[name=go]'
      .pause 1000