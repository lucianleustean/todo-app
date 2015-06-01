'use strict'

class TodoApp.Views.Todo extends Backbone.View

  template: JST['app/scripts/templates/todo.hbs']

  tagName: 'li'

  events:
    'click input[type="checkbox"]' : 'toggle'
    'submit form'                  : 'submit'

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model.toJSON())
    @

  toggle: ->
    @model.toggle()

  submit: (e) ->
    input = @$('form input')
    title = input.val().trim()

    @model.set('title', title)
    @model.save()
    @render()
