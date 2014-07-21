App.QuestionnairesNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord('questionnaire', {}).save()

  afterModel: (model) ->
    model.get('questions').addObject(@store.createRecord('question', {}))

  setupController: (controller) ->
    controller.set 'fields1', @store.createRecord('question', {})
    controller.set 'fields2', @store.createRecord('question', {})
    controller.set 'fields3', @store.createRecord('question', {})
