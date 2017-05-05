Rails.application.routes.draw do
  get 'garden/index'

  get 'garden/edit'

  get 'garden/update'

  get 'garden/destroy'

  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }

  root to: 'client#index'

  get '*path', to: 'client#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
