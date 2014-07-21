App.QuestionsRoute = Ember.Route.extend

  model: -> @store.find 'question'
