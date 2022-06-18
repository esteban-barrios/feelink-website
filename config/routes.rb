Rails.application.routes.draw do
  resources :empresas do
    member do
      get :agregar_usuario
      post :crear_usuario
    end
  end
  devise_for :users, path_names: {
      sign_up: ''
    }

  get "users/:id", to: "users#show", as: 'show_user'
  get "users/:id/editar", to:"users#edit", as: 'edit_user'
  post "users/:id/editar", to:"users#update", as: 'update_user'
  delete "users/:id/destroy", to:"users#destroy", as: 'destroy_user'

  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  get 'experience', to: "pages#experience"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
