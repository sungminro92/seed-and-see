Rails.application.routes.draw do
  
  devise_for :users, controllers: {
  registrations: 'users/registrations'
	}

  namespace :api do
    resources :posts, :only => [:index]
    resources :plants

    post '/users/garden' => 'garden_plants#create'

    resources :users do
      resources :garden, :only => [:index]
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
