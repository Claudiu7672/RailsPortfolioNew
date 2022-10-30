Rails.application.routes.draw do
  # Devise routes
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }

  get "pages/about"
  get "pages/contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
