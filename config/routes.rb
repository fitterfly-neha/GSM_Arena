Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'about' , to: 'pages#about'
  #resources :brands, only: [:show, :index, :new, :create, :edit, :update]
  #resources :devices, only:[:show, :index, :new, :create, :edit, :update]

  resources :brands do
  resources :devices
  end

end
