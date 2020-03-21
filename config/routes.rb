Rails.application.routes.draw do
  resources :payments
  get 'locations/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :contacts
  resources :employees do
    resources :laboralrelations 
  end
  resources :laboralrelations, only: :index
  resources :credits
  resources :companies
  resources :positions
  resources :documents
  devise_for :users
  get 'homes/index'
  get 'homes/about', to:'homes#about'
  get 'homes/tarot', to:'homes#tarot'
  get 'homes/new', to:'homes#new'
  get 'quotations/index'
  get 'quotations/:id/show', to: 'quotations#show', as:'quotation_show'
  get 'quotations/new'
  post 'quotations', to: 'quotations#create'
  get 'quotations/:id/edit', to: 'quotations#edit', as:'quotation_edit'
  get 'quotations/login', to:'quotations#login'
  get 'quotations/login', to: 'quotation#login'
  patch 'quotations/:id', to:'quotations#update', as: 'quotation'
  patch 'quotations/status/:id', to:'quotations#update_status', as: 'quotation_status'
  delete 'quotations/:id', to: 'quotations#destroy' ,as: 'delete_quotation'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#intro'
end
