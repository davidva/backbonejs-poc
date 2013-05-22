'use strict'

describe 'App', ->

  beforeEach ->
    setFixtures('<div id="todo-view"></div>')

  describe 'something', ->

    it 'displays TODO text', ->
      expect($('#todo-view')).toContainHtml('<h3>Pick up milk</h3>')
