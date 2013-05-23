'use strict'

App =
  Views:
    Todo: Backbone.View.extend
      template: _.template('<h3><%= description %></h3>')
      initialize: ->
        @render()
      render: ->
        attributes = @model.toJSON()
        @$el.html(@template(attributes))

  Models:
    Todo: Backbone.Model.extend {}

  initialize: ->
    todoItem = new App.Models.Todo
      id: 1
      description: 'Pick up milk'
      status: 'incomplete'

    todoView = new App.Views.Todo
      model: todoItem

    $('#todo-view').html(todoView.$el)

window.App = App
