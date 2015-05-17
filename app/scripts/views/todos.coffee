'use strict';

class TodoApp.Views.Todos extends Backbone.View

  template: JST['app/scripts/templates/todos.hbs']

  tagName: 'div'

  id: ''

  className: ''

  events: {}

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model.toJSON())
