class Api::V1::QuestionsController < ApplicationController
  respond_to :json

  def index
    respond_with Question.all
  end

  def show
    respond_with question
  end

  def create
    respond_with :api, :v1, Question.create(question_params)
  end

  def update
    respond_with question.update(question_params)
  end

  def destroy
    respond_with question.destroy
  end

  private

  def question
    Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:id, :question, :answer)
  end
end
