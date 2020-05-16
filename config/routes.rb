Rails.application.routes.draw do

  namespace :api do
  namespace :v1 do
  devise_for :users,
                path: '',
                path_names: {
                  sign_in: 'login',
                  sign_out: 'logout',
                  registration: 'signup'
                },
                controllers: {
                  sessions: 'sessions',
                  registrations: 'registrations'
                }


  devise_scope :user do

  post "/login", to: "sessions#create"
  get "/signup", to: "registrations#new"
  get "/auto_login", to: "sessions#new"
end
  # post "/login", to: "auth#login"
  # get "/auto_login", to: "auth#auto_login"
  # get "/user_is_authed", to: "auth#user_is_authed"
  root to: "home#index"
end
end
end
