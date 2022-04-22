Rails.application.routes.draw do
  get '/user/:id' => 'users#show', as: :user_profile
  devise_scope :user do
    # Redirects users back to homepage when deleting account
    get "users", to: "site#home"
  end
  devise_for :users, controllers: {
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    registrations: "users/registrations",
    sessions: "users/sessions",
    unlocks: "users/unlocks",
  }
  root "site#home"
  get '/about' => "site#about"

  get "/activities/user/:uid" => 'activities#list_user_activities', as: :user_activities
  resources :activities
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
