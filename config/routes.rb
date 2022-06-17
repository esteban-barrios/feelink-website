Rails.application.routes.draw do
  resources :empresas do
    member do
      get :agregar_usuario
      post :crear_usuario
    end
  end
  devise_for :users

  get "users/:id", to: "users#show", as: 'show_user'
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  get 'experience', to: "pages#experience"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
