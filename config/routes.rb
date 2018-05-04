Rails.application.routes.draw do
  
  devise_for :stores
  devise_for :users
  get 'users/edit'

  get 'users/show'

  get 'staffs/new'

  get 'staffs/create'

  get 'staffs/index'

  get 'staffs/edit'

  get 'thanks/new'

  get 'thanks/create'

  get 'thanks/complete'

  get 'stores/edit'

  get 'stores/show'

  get 'stores/index'

  get 'gochies/index'

  get 'gochies/new'

  get 'gochies/complete'

  get 'gochies/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
