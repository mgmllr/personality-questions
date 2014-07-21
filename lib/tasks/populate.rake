namespace :db do
  task populate: :environment do

    Questionnaire.destroy_all
    Question.destroy_all

    def random_question
      ["What's the best advice you've heard recently?", "What's something that everyone needs to know about?", "What is your guilty pleasure?"].sample
    end

    def make_question(questionnaire)
      Question.create(
        questionnaire_id: questionnaire.id,
        question: random_question,
        answer: Faker::HipsterIpsum.words(5).join(' ')
        )
    end

    20.times do
      q = Questionnaire.create()
      3.times { make_question(q) }
    end
  end
end
