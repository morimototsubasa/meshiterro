Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'postimages/new'
  # get 'postimages/index'
  # get 'postimages/show'
  devise_for :users
  resources :postimages, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'about' => "homes#about", as: "about"
  resources :users, only: [:show, :edit, :update]
end
