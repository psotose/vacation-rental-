Rails.application.routes.draw do
  get 'cabins/index'
  root 'cabins#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
