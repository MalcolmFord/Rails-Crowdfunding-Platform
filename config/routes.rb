Rails.application.routes.draw do

get 'welcome/index'
root 'welcome#index'

  resources :project_type_joins
  resources :earned_rewards_joins
  resources :supported_projects_joins
  resources :rewards
  resources :projects
  resources :project_types
  resources :payment_types
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
