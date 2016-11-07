Rails.application.routes.draw do
resources :usuarios
root 'usuarios#index'

resources :establecimientos
root 'establecimientos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
