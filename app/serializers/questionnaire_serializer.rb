class QuestionnaireSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id
  has_many :questions
end
