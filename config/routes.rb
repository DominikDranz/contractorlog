Rails.application.routes.draw do
  resources :delivery_entries
  root 'delivery_entries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
