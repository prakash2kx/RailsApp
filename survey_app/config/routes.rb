Rails.application.routes.draw do
  root to: "login#login"
  
  post 'login/logging_in'
  resources :survey do 
  	get 'user_response', on: :member
  end
  resources :question
  resources :survey_response

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
