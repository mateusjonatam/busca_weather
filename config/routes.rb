Rails.application.routes.draw do
  resources :cidades
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "buscar_clima/buscar"
end
