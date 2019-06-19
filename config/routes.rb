Rails.application.routes.draw do
  resources :products
  resources :drivers
  resources :invoices
  resources :delivery_notes
  resources :waters
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
