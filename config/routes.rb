Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
   	namespace :api do
		namespace :v1 do
			
			get 'login', to: 'users#login'
			get 'index', to: 'sessions#index'
			get 'courses', to: 'courses#index'
			get 'course_elements/:id', to: 'course_elements#index'
			get 'lectures/:id', to: 'lecture#index'
			get 'problems/:id', to: 'problems#index'
			get 'hi', to:'health#hello'
		end
	end
end
