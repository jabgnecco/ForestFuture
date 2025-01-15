Rails.application.routes.draw do
  devise_for :users

  # Root path points to the home action
  root to: "pages#home"

  # Add a route for the index action in PagesController
  get 'pages/index', to: 'pages#index', as: :pages_index

  # Existing resources for projects
  resources :projects

  # Route for profile
  resource :profile, only: [:show] # Esta ruta proporciona `profile_path`

end
