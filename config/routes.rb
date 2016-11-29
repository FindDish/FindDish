Rails.application.routes.draw do
root to: 'establecimientos#index'
resources :usuarios
root 'usuarios#index'

resources :establecimientos
root 'establecimientos#index'

resources :platillos
root 'platillos#index'

resources :reservas
root 'reservas#index'
  
resources :tareas  do
  member do
    get 'Ver'
 	  get 'Query1'
    get 'Query2'
    get 'Query3'
    get 'Query4'
  end
  collection do
    get 'Ver'
    get 'Query1'
    get 'Query2'
    get 'Query3'
    get 'Query4'
  end
end

resources :tareas
root 'tareas#index'

resources :alergias
root 'alergias#index'

resources :telefonos
root 'telefonos#index'

resources :establecimientos
root 'establecimientos#index'

resources :ordenes
root 'ordenes#index'

resources :alergias
root 'alergias#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
