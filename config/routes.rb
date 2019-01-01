Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
