Rails.application.routes.draw do

  resources :contacts, except: [:edit, :update, :destroy]
  get 'contacts/new', to: 'contacts#new', as: :contact_form

  # Routes for Google authentication
  get 'auth/google_oauth2/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
  resources :cabins , except: [:new, :show, :edit, :create, :update, :destroy] do
    resources :reservations, except: [:index, :edit, :update]
  end
  resources :user , except: [:new, :show, :edit, :create, :update] do
    resources :reservations, except: [:new, :show, :edit, :create, :update]
  end  

  root 'cabins#index'
end
