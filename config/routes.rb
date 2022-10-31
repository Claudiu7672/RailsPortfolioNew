Rails.application.routes.draw do
  resources :portfolios
  resources :blogs
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  # Devise routes
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }

  get "pages/about"
  get "pages/contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
