Rails.application.routes.draw do
  devise_for :users
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  get 'services', to: "pages#services"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
