Rails.application.routes.draw do
  get 'register/index'
  get 'login/index'
  get 'welcome/index'

  devise_for :commerces, path: 'commerces', controllers: { sessions: 'commerces/sessions', registrations: 'commerces/registrations' } 
  devise_for :users, path: 'users', controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  resources :commerces do 
  	resources :products
    resources :reviews
  end

  resources :products

  root "welcome#index"

  get 'commerces/:id' => 'commerces#show'

  get 'auth/:provider/callback' => 'sessions#create'
  get 'auth/failure' => redirect('/')
  delete 'signout' => 'sessions#destroy'
end
