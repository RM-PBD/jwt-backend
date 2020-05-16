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

  # devise_scope :user,
  #
  #   post "/login", to: "auth#login"
  #   get "/auto_login", to: "auth#auto_login"

  # post "/login", to: "auth#login"
  # get "/auto_login", to: "auth#auto_login"
  # get "/user_is_authed", to: "auth#user_is_authed"
end
end
end
