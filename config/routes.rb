Rails.application.routes.draw do
  get 'home/index'
  get 'quotations/index'
  get 'quotations/about', to:'quotations#about'
  resources :cusstomers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'quotations#index'
end
