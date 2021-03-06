path = require 'path'

module.exports =
  tags: ['sanity', 'search']

  'Bing search from homepage': (client) ->
    require('nightwatch-pages')(client, path.resolve(__dirname, '..', 'pages'))

    searchTerm = 'selenium'

    client
      .page.homepage.load()
      .page.homepage.search searchTerm
      .page.search_results.assertResults searchTerm
      .page.search_results.navImages()
      .saveScreenshot './results/screenshots/screen2.png'
      .end()