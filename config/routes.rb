Rails.application.routes.draw do
  devise_scope :user do
    # Redirects users back to homepage when deleting account
    get "users", to: "site#home"
  end
  devise_for :users
  root "site#home"
  get '/about' => "site#about"

  resources :activities
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
