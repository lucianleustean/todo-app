# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Todo View', ->
  beforeEach ->
    @TodoView = new TodoApp.Views.Todo();
