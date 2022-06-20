Rails.application.routes.draw do
  resources :empresas do
    member do
      get :agregar_usuario
      post :crear_usuario
    end
  end
  devise_for :users, :controllers => { :registrations => "registrations" }
  
  resources :users, :except => ['show', 'edit', 'update', 'destroy'] do
    resources :simulacions do
      get '/marcar-realizada', to: "simulacions#marcar_realizada", as: "marcar_realizada"
    end
  end

  get "user/:id", to: "users#show", as: 'show_user'
  get "user/:id/editar", to:"users#edit", as: 'edit_user'
  post "user/:id/editar", to:"users#update", as: 'update_user'
  delete "user/:id/destroy", to:"users#destroy", as: 'destroy_user'

  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  get 'experience', to: "pages#experience"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"


  #API
  get "api/show_user/:id", to: "api#show_user", as: "api_show_user"
  get "api/simulacion_realizada/:id", to: "api#simulacion_realizada", as: "api_simulacion_realizada"

end
