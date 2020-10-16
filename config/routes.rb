Rails.application.routes.draw do

  devise_for :users

  root to: "tasks#index"

  resources :tasks
  resources :projects, only: [:index, :destroy]
  resources :tags, only: [:index, :destroy]

  get 'results', to: 'search#result', as: 'search'

  match '*unmatched', to: "tasks#index", via: :all

end
