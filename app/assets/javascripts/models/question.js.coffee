App.Question = DS.Model.extend
  questionnaire: DS.belongsTo('questionnaire')
  question: DS.attr('string')
  answer: DS.attr('string')
  fullQuestion: ( ->
    @get('question') + ' ' + @get('answer')
  ).property('question', 'answer')
