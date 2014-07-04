define (require) ->
  "use strict"
  $ = require("jquery")
  _ = require("underscore")
  Backbone = require("backbone")
  tpl = require("text!tpl/Employee.html")
  template = _.template(tpl)
  Backbone.View.extend
    initialize: ->
      @render()
      return

    render: ->
      @$el.html template(@model.attributes)
      this

