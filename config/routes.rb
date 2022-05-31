Rails.application.routes.draw do

  # Routes for Google authentication
  get 'auth/google_oauth2/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
  resources :cabins , except: [:new, :show, :edit, :create, :update, :destroy] do
    resources :reservations, except: [:index, :edit, :update]
  end

  get '/contact_form', to: 'cabins#contact_form'
  root 'cabins#index'
end
