Rails.application.routes.draw do
  resources :employees
  resources :laboralrelations
  resources :credits
  resources :companies
  resources :statuses
  resources :documents
  devise_for :users
  get 'homes/index'
  get 'homes/about', to:'homes#about'
  get 'homes/planes', to:'homes#planes'
  get 'quotations/index'
  get 'quotations/new'
  get 'quotations/login', to:'quotations#login'
  get 'quotations/login', to: 'quotation#login'
  post 'quotations', to: 'quotations#create'
  get 'quotations/show', to: 'quotations#show', as:'quotations_show'
  get 'quotations/:id/edit', to: 'quotations#edit'
  patch 'quotations/:id', to:'quotations#update', as: 'quotation'
  patch 'quotations/status/:id', to:'quotations#update_status', as: 'quotation_status'
  delete 'quotations/:id', to: 'quotations#destroy' ,as: 'delete_quotation'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#intro'
end
