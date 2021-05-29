Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  resources :profiles, only: [:show, :new, :edit, :create, :update]
  root 'posts#index'
end
