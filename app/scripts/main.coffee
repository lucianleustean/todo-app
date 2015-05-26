'use strict'

window.TodoApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new TodoApp.Views.Todos
      collection: new TodoApp.Collections.Todos()

$ ->
  TodoApp.init()
