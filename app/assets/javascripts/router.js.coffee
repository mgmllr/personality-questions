# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'questionnaires', path: '/', ->
    @route 'new', path: '/new'
    @resource 'questionnaire', path: '/:id', ->
      @resource 'questions', path: '/questions', ->
        @resource 'question', path: '/:id'

App.Router.reopen
  location: 'auto'
  rootURL: '/'
