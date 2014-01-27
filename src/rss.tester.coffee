# Export Plugin Tester
module.exports = (testers) ->
  # Define Plugin Tester
  class RssTester extends testers.RendererTester
    # Configuration
    config:
      removeWhitespace: true
      contentRemoveRegex: /\<(lastBuild|pub)Date\>.*\<\/(lastBuild|pub)Date\>/g

    docpadConfig:
      templateData:
        site:
          url: 'http://my-site-url.com/'
          title: 'site title'
          description: 'site description'
          author: 'eric.vantillard@evaxion.fr'
          date: new Date('Mon, 27 Jan 2014 13:01:00 GMT')
      plugins:
        rss:
          collection: 'html'
          url: '/rss.xml'
      enabledPlugins:
        'marked': true
        'eco': true
      #logLevel: 6 #7 for debug