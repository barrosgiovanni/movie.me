Rails.application.routes.draw do
  # devise routes set by default
  devise_for :users

  # root defined
  root to: "pages#home"

  # get 'lists',           to: 'lists#index'
  # get 'lists/new',       to: 'lists#new'
  # post 'lists',          to: 'lists#create'
  # get 'lists/:id',       to: 'lists#show',        as: :list
  # delete 'lists/:id',    to: 'lists#destroy'

  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  resources :movies, only: [:index, :show]
end
