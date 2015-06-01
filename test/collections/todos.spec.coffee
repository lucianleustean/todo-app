# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Todos Collection', ->
  beforeEach ->
    @TodosCollection = new TodoApp.Collections.Todos()
