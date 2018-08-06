Rails.application.routes.draw do
  resources :blogs
  resources :projects
  get '/home',     to:'pages#home'
  get '/about',    to:'pages#about'
  get '/contact',  to:'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
