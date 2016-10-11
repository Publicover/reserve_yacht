Rails.application.routes.draw do

  resources :reservations
  
  get 'reservations/edit'

  get 'reservations/index'

  get 'reservations/new'

  get 'reservations/show'

  root 'reservations#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
