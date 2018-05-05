Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    omniauth_callbacks: 'omniauth_callbacks'
  }
  devise_for :stores, controllers: {
    sessions: 'stores/sessions',
    passwords: 'stores/passwords',
    registrations: 'stores/registrations'
  }
  resources :users do
    resources :gochies do
    collection do
      get 'complete'
    end
  end
  end
  resources :stores
  resources :staffs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
