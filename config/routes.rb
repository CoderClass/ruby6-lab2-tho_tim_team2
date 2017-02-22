Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  get 'users/new' => 'users#create'
  
  get 'login' => 'sessions#new'
  
  post 'login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
