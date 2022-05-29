Rails.application.routes.draw do

  # Routes for Google authentication
  get 'auth/google_oauth2/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
  get 'cabins/index'
  get 'cabins/contact_form'
  root 'cabins#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
