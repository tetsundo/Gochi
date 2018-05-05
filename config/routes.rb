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
  root 'gochies#index'

  resources :stores do
    resources :gochies do
      resources :thanks do
        collection do
          get 'complete'
        end
      end
      collection do
        get 'complete'
      end
    end

  end

  resources :staffs
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
