App.QuestionRoute = Ember.Route.extend

  model: (params) -> @store.find 'question', params.id
