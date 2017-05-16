Rails.application.routes.draw do

  devise_for :users, controllers: {
  registrations: 'users/registrations'
	}

  namespace :api do
    resources :posts, :only => [:index]
    resources :plants, :except => [:show]

    get '/users/:userId/garden' => 'garden#index'
    post '/users/gardenplants' => 'garden_plants#create'
    delete '/users/garden/gardenplants/:id' => 'garden_plants#destroy'
    post '/users/posts/:id/comments' => 'comments#create'

    get '/plants/:plant_name' => 'plants#show'
    # ???? DOES THIS WORK?
    post '/users/:userId/garden' => 'garden#create'
    # post
    resources :users do
      resources :garden
    	resources :posts, :except => :index do
    		resources :comments
    	end
    end
  end

  root to: 'client#index'
  get '*path', to: 'client#index'

  # always go to client#index for all paths.
  # only Angular views will handle the differences.

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
