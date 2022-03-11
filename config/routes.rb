Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get '/pages/about', to: 'pages#about', as: 'about'
  get '/pages/projects', to: 'pages#projects', as: 'projects'
  get '/pages/contact', to: 'pages#contact', as: 'contact'

  # Show a particular blogs post 
  # get '/blogss/:id', to: 'blogs#show'

  # Create a new blogs post 
  # get '/blogss/new', to: 'blogs#new', as: 'new_blogs'
  # post '/blogss', to: 'blogs#create'

  # Edit a blogs post
  # get '/blogss/:id/edit', to: 'blogss#edit', as: 'edit_blogs'
  # patch '/blogss/:id', to: 'blogss#update'


end
