# frozen_string_literal: true

Rails.application.routes.draw do
  ######                                           ######
  ## Unacceptable routes for the first few iterations! ##
  ######                                           ######

  root to: 'posts#index'
  resources :posts, only: [:index, :show]

  namespace :admin do
    root to: 'dashboard#index'

    get 'signin', to: 'sessions#new'
    post 'signin', to: 'sessions#create'
    delete 'signout', to: 'sessions#destroy'
  end
end
