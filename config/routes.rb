Rails.application.routes.draw do


  resources :remarks
  root 'remarks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
