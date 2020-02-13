Rails.application.routes.draw do
  get 'home/index'
  get 'quotations/index'
  get 'quotations/about', to:'quotations#about'
  get 'quotations/quotes', to:'quotations#quotes'
  get 'quotations/login', to:'quotations#login'
  get 'quotations/planes', to:'quotations#planes'
  get 'quotations/intro', to:'quotations#intro'


  resources :cusstomers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'quotations#index'
end
