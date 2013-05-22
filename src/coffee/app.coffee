'use strict'

TodoItem = Backbone.Model.extend {}

TodoView = Backbone.View.extend
  template: _.template('<h3><%= description %></h3>')
  render: ->
    attributes = @model.toJSON()
    @$el.html(@template(attributes))

todoItem = new TodoItem
  id: 1
  description: 'Pick up milk'
  status: 'incomplete'

todoView = new TodoView
  id: 'todo-view'
  model: todoItem

$ ->
  todoView.render()
