Rails.application.routes.draw do
  get 'register/index'

  get 'login/index'

  get 'welcome/index'

  get 'authentication/index'

  devise_for :commerces, path: 'commerces', controllers: { sessions: 'commerces/sessions', registrations: 'commerces/registrations' } do 
  	resources :products
  end 	

  resources :commerces do 
  	resources :products
  end

  resources :products


  devise_for :users, path: 'users', controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  root "welcome#index"

  get 'commerces/:id' => 'commerces#show'

  get 'login/index'
end
