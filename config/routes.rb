Rails.application.routes.draw do
  get 'garden_plants/index'

  get 'garden_plants/edit'

  get 'garden_plants/update'

  get 'garden_plants/delete'

  get 'plants/index'

  get 'plants/show'

  resources :garden
  
  devise_for :users

  root to: 'client#index'
  get '*path', to: 'client#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
