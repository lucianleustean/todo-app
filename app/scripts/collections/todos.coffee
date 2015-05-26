'use strict'

class TodoApp.Collections.Todos extends Backbone.Collection

  initialize: ->
    @model = TodoApp.Models.Todo
