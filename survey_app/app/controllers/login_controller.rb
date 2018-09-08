class LoginController < ApplicationController

	def login
	end

	def logging_in
		user = User.find_by(name: params[:name])
      
		if user &.authenticate(params[:password]) && user.survey_admin?
			session[:user_id] = user.id
			redirect_to survey_index_path
		elsif user &.authenticate(params[:password]) && user.response_user?
			session[:user_id] = user.id
			redirect_to new_survey_response_path		
		end
	end
end
