class SurveyResponseController < ApplicationController
	def new
		@surveys = Survey.all
	end

	def create
		@sr = SurveyResponse.new(res_params)
		@sr.save
		params[:answer].select{|k,v| v.strip.present?}.each do |ans|
	      Answer.create({:survey_response_id => @sr.id,:title => ans[1],:question_id => ans[0]})
	    end
	end

	private

	def res_params
		params[:survey_response][:user_id] = session[:user_id]
		params.require(:survey_response).permit(:survey_id,:user_id)
	end
end
