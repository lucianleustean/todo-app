'use strict'

class TodoApp.Collections.Todos extends Backbone.Collection

  localStorage: new Backbone.LocalStorage('backbone-generator-todo-list')

  initialize: ->
    @model = TodoApp.Models.Todo
