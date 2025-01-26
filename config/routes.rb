Rails.application.routes.draw do
  devise_for :users

  # Root path points to the home action
  root to: "pages#home"

  # Pages in PagesNavController
  get 'invest_in_nature', to: 'pages_nav#invest_in_nature', as: :invest_in_nature
  get 'develop_project', to: 'pages_nav#develop_project', as: :develop_project
  get 'explore_projects', to: 'pages_nav#explore_projects', as: :explore_projects
  get 'results', to: 'pages_nav#resources', as: :results

  # Existing resources for projects
  resources :projects

  # Route for profile
  resource :profile, only: [:show] # Provides `profile_path`
end
