Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get '/pages/about', to: 'pages#about', as: 'about'
  get '/pages/blog', to: 'pages#blog', as: 'blog'
  get '/pages/projects', to: 'pages#projects', as: 'projects'
  get '/pages/contact', to: 'pages#contact', as: 'contact'

end
