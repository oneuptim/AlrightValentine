DatingApp::Application.routes.draw do

  match 'logout' => 'sessions#destroy', :as => 'logout'
  match 'login' => 'sessions#new', :as => 'login'
  match 'signup' => 'users#new', :as => 'signup'

  resources :charges
  resources :users
  resources :sessions
  resources :photos
  resources :messages

  root :to => "users#index"
end
