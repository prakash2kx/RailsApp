# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Survey.delete_all
Question.delete_all
Answer.delete_all
User.delete_all

5.times.each do |t|
 survey =	Survey.create({:title => "Survey #{t}"})
 5.times.each do |x|
 question = Question.create({:title => "Survey #{t} questions #{x}", :survey_id => survey.id})
 end
end

100.times.each do |r|
	r += 1
	User.create({name: "RespondUser #{r}",password: "password",role: 2})
end