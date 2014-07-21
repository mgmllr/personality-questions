App.QuestionnairesRoute = Ember.Route.extend

  model: -> @store.find 'questionnaire'
