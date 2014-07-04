define(function(require) {
  "use strict";
  var $, Backbone, template, tpl, _;
  $ = require("jquery");
  _ = require("underscore");
  Backbone = require("backbone");
  tpl = require("text!tpl/Employee.html");
  template = _.template(tpl);
  return Backbone.View.extend({
    initialize: function() {
      this.render();
    },
    render: function() {
      this.$el.html(template(this.model.attributes));
      return this;
    }
  });
});
