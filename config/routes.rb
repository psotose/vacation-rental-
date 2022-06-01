Rails.application.routes.draw do

  get 'contacts/new', to: 'contacts#new', as: :contact_form
  get 'contacts/create', to: 'contacts#create'
  # Routes for Google authentication
  get 'auth/google_oauth2/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
  resources :cabins , except: [:new, :show, :edit, :create, :update, :destroy] do
    resources :reservations, except: [:index, :edit, :update]
  end

  root 'cabins#index'
end
