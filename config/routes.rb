Rails.application.routes.draw do

  namespace :api do
  namespace :v1 do
  resources :users, only: [:create]

  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
end
end
end
