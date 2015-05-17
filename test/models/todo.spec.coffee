# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Todo Model', ->
  beforeEach ->
    @TodoModel = new TodoApp.Models.Todo();
