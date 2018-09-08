class Survey < ApplicationRecord
	validates :title, presence: true
	has_many :questions, dependent: :destroy
	has_many :survey_responses, dependent: :destroy
	has_many :users, through: :survey_response
end
