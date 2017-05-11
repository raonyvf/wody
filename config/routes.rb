Rails.application.routes.draw do
  resources :gyms
  resources :physical_people
  resources :addresses
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
