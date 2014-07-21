App.QuestionnaireRoute = Ember.Route.extend

  model: (params) -> @store.find 'questionnaire', params.id
