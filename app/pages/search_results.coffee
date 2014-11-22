module.exports =
  selectors:
    'resultDiv': '#b_results'
    'navImages': 'nav ul li:nth-child(2) a'

  assertResults: (text) ->
    this.client.assert.containsText this.selectors.resultDiv, text

  navImages: ->
    this.client.click this.selectors.navImages