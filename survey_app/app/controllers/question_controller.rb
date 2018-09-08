class QuestionController < ApplicationController
	def new
		@survey = Survey.find params[:survey_id]
		@question = Question.new
	end

	def create
		Question.create(questions_params)
		redirect_to :controller => 'survey',:action => "show", :id => params[:question][:survey_id]
	end

	def destroy
		get_question.destroy
		redirect_to :controller => 'survey',:action => "show", :id => params[:survey_id]
	end

	private

	def questions_params
		params.require(:question).permit(:title,:survey_id)
	end

	def get_question
		Question.find params[:id]
	end
end
