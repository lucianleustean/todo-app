# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Todos View', ->
  beforeEach ->
    @TodosView = new TodoApp.Views.Todos();
