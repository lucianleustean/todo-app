'use strict'

class TodoApp.Views.Todos extends Backbone.View

  template: JST['app/scripts/templates/todos.hbs']

  el: '#todo-app'

  events: ->
    'submit' : 'createTodo'

  initialize: () ->
    @render()

    @listenTo(@collection, 'add', @addTodoItem)
    @listenTo(@collection, 'reset', @addAllTodoItems)

    @collection.fetch()

  render: () ->
    @$el.html @template

  createTodo: (event)->
    event.preventDefault()

    title = @$('#new-todo').val().trim()

    if title
      @collection.create new TodoApp.Models.Todo({title: title})

      $('#new-todo').val('')

  addTodoItem: (todo)->
    view = new TodoApp.Views.Todo({ model: todo })
    @$('ul').append(view.render().el)

  addAllTodoItems: ->
    @collection.each(@addTodoItem, @)
