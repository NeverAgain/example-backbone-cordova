require.config
  baseUrl: 'js'
  paths:
    jquery: 'vendor/jquery-1.11.1.min'
    backbone: 'vendor/backbone-1.1.2.min'
    bootstrap: 'vendor/bootstrap.min'
    router: 'app/router'
    pageslider: 'vendor/pageslider'
    text: 'vendor/text'

  shim:
    'backbone':
      deps: ['vendor/underscore-min', 'jquery']
      exports: 'Backbone'
    'underscore':
      exports: '_'

require ['jquery', 'backbone', 'router'], ($, Backbone, Router) ->
  router = new Router()

  $("body").on "click", ".back-button", (event) ->
    event.preventDefault()
    window.history.back()

  Backbone.history.start()
