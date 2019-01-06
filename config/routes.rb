Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :articles_tags
  resources :articles_categories
  resources :roles_users
  resources :sub_categories
  resources :manages
  resources :permissions
  resources :roles
  resources :videos
  resources :images
  resources :tags
  resources :user_follows
  resources :content_follows
  resources :categories
  resources :comments
  resources :articles
  resources :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
