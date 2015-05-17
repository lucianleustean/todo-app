'use strict';

class TodoApp.Views.Todo extends Backbone.View

  template: JST['app/scripts/templates/todo.hbs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model.toJSON())
