Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get '/pages/about', to: 'pages#about', as: 'about'
  get '/pages/blog', to: 'pages#blog', as: 'blog'
  get '/pages/projects', to: 'pages#projects', as: 'projects'
  get '/pages/contact', to: 'pages#contact', as: 'contact'

  get 'blogs/new', to: 'blog#new', as: 'new_blog'
  post 'blogs', to: 'blog#create'

end
