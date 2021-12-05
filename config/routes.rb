Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  get 'tweet_comments/show'
  get 'tweet_comments/create'
  get 'tweet_comments/destroy'
  get 'tweets/index'
  get 'tweets/new'
  get 'tweets/create'
  get 'tweets/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
