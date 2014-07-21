class Api::V1::QuestionnairesController < ApplicationController
  respond_to :json

  def index
    respond_with Questionnaire.all
  end

  def show
    respond_with questionnaire
  end

  def create
    respond_with :api, :v1, Questionnaire.create(questionnaire_params)
  end

  def update
    respond_with questionnaire.update(questionnaire_params)
  end

  def destroy
    respond_with questionnaire.destroy
  end

  private

  def questionnaire
    Questionnaire.find(params[:id])
  end

  def questionnaire_params
    params.permit(:id, :questions)
  end
end
