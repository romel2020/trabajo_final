Rails.application.routes.draw do
  resources :companies
  resources :statuses
  resources :documents
  devise_for :users
  get 'home/index'
  get 'quotations/index'
  get 'quotations/about', to:'quotations#about'
  get 'quotations/new'
  get 'quotations/login', to:'quotations#login'
  get 'quotations/planes', to:'quotations#planes'
  get 'quotations/listado', to: 'quotations#listado'
  get 'quotations/intro', to:'quotations#intro'
  get 'quotations/login', to: 'quotation#login'
  post 'quotations', to: 'quotations#create'
  get 'quotations/:id/edit', to: 'quotations#edit'
  patch 'quotations/:id', to:'quotations#update', as: 'quotation'
  delete 'quotations/:id', to: 'quotations#destroy' ,as: 'delete_quotation'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'quotations#intro'
end
