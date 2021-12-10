Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :tweets, only: [:index, :show, :new, :create, :destroy] do
    resources :tweet_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
