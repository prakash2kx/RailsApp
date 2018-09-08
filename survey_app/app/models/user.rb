class User < ApplicationRecord
	has_secure_password
	enum role: ['survey_admin','survey_taker','response_user']
	
	has_many :survey_responses
	has_many :survey, through: :survey_response
end
