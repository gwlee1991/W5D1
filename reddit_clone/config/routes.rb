Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :subs do
    resources :posts, only: [:new]
  end
  resources :posts, only: [:edit, :show, :update, :create, :destroy]
  resource :session


end
