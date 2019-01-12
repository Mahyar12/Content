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
  get 'dashboard', to: 'dashboards#dashboard'
  get 'dashboard/user_management', to: 'dashboards#user_management'
  get 'dashboard/access_control_management', to: 'dashboards#access_control_management'
  get 'dashboard/add_content', to: 'dashboards#add_content'
  get 'dashboard/my_contents', to: 'dashboards#my_contents'
  get 'dashboard/editorial', to: 'dashboards#editorial'
  get '/models', to: 'dashboards#get_models'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
