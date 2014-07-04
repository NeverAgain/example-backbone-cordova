define (require) ->
  "use strict"
  $ = require("jquery")
  Backbone = require("backbone")
  Employee = Backbone.Model.extend(
    urlRoot: "http://localhost:3000/employees"
    initialize: ->
      @reports = new EmployeeCollection()
      @reports.url = @urlRoot + "/" + @id + "/reports"
      return
  )
  EmployeeCollection = Backbone.Collection.extend(
    model: Employee
    url: "http://localhost:3000/employees"
  )
  originalSync = Backbone.sync
  Backbone.sync = (method, model, options) ->
    if method is "read"
      options.dataType = "jsonp"
      originalSync.apply Backbone, arguments_

  Employee: Employee
  EmployeeCollection: EmployeeCollection
