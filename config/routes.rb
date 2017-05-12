Rails.application.routes.draw do
  get 'city/edit'

  get 'city/create'

  get 'city/update'

  get 'city/destroy'

  resources :gyms
  resources :physical_people
  resources :addresses
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
