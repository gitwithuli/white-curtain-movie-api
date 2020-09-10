Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # devise_for :users, controllers: { sessions: 'sessions', registrations: 'api/v1/registrations' }
      # post 'login' => 'user_token#create'
      # resources :users, only: [:create]
      # get 'users/me', to: 'users#me'
      #  get 'movies/recommendations', to: 'movies#get_recommendations'

      # resources :movies, only: [ :index, :show ]do
      #   post 'follow' => 'movies#follow'
      #   delete 'unfollow' => 'movies#unfollow'
      # end


      # resources :genres, only: [ :index, :show ]do
      #   post 'follow' => 'genres#follow'
      #   delete 'unfollow' => 'genres#unfollow'
      # end

      # resources :stars, only: [ :index, :show ]do
      #   post 'follow' => 'stars#follow'
      #   delete 'unfollow' => 'stars#unfollow'
      # end
      post 'users/register', to: 'users#register'
      post 'users/login', to: 'users#login'
      get 'users/test', to: 'users#test'
    end
  end
 end
