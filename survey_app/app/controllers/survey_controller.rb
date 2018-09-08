class SurveyController < ApplicationController

  def index
    @list_survey = Survey.all
  end

  def create
    Survey.create(survey_params)
    redirect_to :action => 'index'
  end

  def show
    @survey = get_survey
    @questions = Question.where(:survey_id => params[:id])
  end

  def edit
    @edit_survey = get_survey
  end

  def update
    get_survey.update_attributes(survey_params)
    redirect_to :action => 'index'
  end

  def destroy
    get_survey.destroy
    redirect_to :action => 'index'
  end

  def user_response
    @survey_response = get_survey.survey_responses   
  end

  private

  def get_survey
    Survey.find params[:id]
  end

  def survey_params
    params.require(:survey).permit(:title, :description)
  end

end
