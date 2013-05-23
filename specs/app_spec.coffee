'use strict'

describe 'App', ->

  beforeEach ->
    setFixtures('<div id="todo-view"></div>')
    window.App.initialize()

  describe 'initialization', ->

    it 'displays TODO text', ->
      expect($('#todo-view')).toContainHtml('<h3>Pick up milk</h3>')
