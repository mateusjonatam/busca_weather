Rails.application.routes.draw do
  resources :cidades
  # For details on the DSL available within this file,ee http://guides.rubyonrails.org/routing.html


  get "busca_clima/buscar"


end
