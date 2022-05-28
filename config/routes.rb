Rails.application.routes.draw do
  get 'cabinets/index'
  root 'cabinets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
