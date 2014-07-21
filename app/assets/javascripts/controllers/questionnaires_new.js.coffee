App.QuestionnairesNewController = Ember.Controller.extend

  sampleQuestions: ["What's the best advice you've heard recently?", "What's something that everyone needs to know about?", "What is your guilty pleasure?"]

  actions:

    createQuestion1: ->
      console.log @get('model')
      questions = @get('model').get('questions')
      question1 = @get('fields1')
      questions.addObject question1
      question1.save()

    createQuestion2: ->
      question = @store.createRecord 'question', @get('fields2')
      question.set 'questionnaire', @get('model')
      question.save()

    createQuestion3: ->
      question = @store.createRecord 'question', @get('fields3')
      question.set 'questionnaire', @get('model')
      question.save().then =>
        @get('model').save()
        @transitionToRoute 'questionnaire', @get('model')
