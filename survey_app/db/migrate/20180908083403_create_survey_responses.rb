class CreateSurveyResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :survey_responses do |t|
      t.integer :survey_id
      t.integer :user_id

      t.timestamps
    end
  end
end
