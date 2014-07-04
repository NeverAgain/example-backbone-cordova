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
  Employee: Employee
  EmployeeCollection: EmployeeCollection
