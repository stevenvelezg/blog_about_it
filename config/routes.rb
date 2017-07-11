Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end
  resources :users

  get 'search' => 'home#search', as: 'search'

  get '/' => 'home#index', as: 'home'

  post 'login' => 'session#create'
  delete 'session' => 'session#destroy'
  # get 'users/edit'
  #
  # get 'users' =>'users#index', as: 'users'
  #
  # post 'users' => 'users#create'
  # get 'users/:id' => 'users#show', as: 'users'
  # put 'users' => 'users#update'
  #
  #
  # get 'users/new'
  #
  # get 'users/edit'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
