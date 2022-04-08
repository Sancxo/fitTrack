Rails.application.routes.draw do
  root "site#home"
  get '/about' => "site#about"

  resources :activities
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
