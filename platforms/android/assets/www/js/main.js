require.config({
  baseUrl: 'js',
  paths: {
    jquery: 'vendor/jquery-1.11.1.min',
    backbone: 'vendor/backbone-1.1.2.min',
    bootstrap: 'vendor/bootstrap.min',
    router: 'app/router',
    pageslider: 'vendor/pageslider',
    text: 'vendor/text'
  },
  shim: {
    'backbone': {
      deps: ['vendor/underscore-min', 'jquery'],
      exports: 'Backbone'
    },
    'underscore': {
      exports: '_'
    }
  }
});

require(['jquery', 'backbone', 'router'], function($, Backbone, Router) {
  var router;
  router = new Router();
  $("body").on("click", ".back-button", function(event) {
    event.preventDefault();
    return window.history.back();
  });
  return Backbone.history.start();
});
