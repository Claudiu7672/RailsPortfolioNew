Rails.application.routes.draw do
  # Portfolio routes
  resources :portfolios, except: [:show]

  get "angular-items", to: "portfolios#angular"
  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"

  # Blogs routes
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  # Devise routes
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }

  # Pages routes
  get "pages/about"
  get "pages/contact"

  # Root page
  root "pages#home"
end
