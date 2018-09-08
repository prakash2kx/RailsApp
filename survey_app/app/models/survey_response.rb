class SurveyResponse < ApplicationRecord
	belongs_to :survey
	belongs_to :user
	has_many :answers
	has_many :questions, through: :answers
	
end
