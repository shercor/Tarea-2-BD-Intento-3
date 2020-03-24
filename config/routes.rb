Rails.application.routes.draw do
  devise_for :users
  resources :publications
  resources :responses
  root 'sections#index', as: "home"
  resources :sections
  resources :sections do
    resources :publications do
      resources:responses
    end
  end
  resources :publications do
    resources:responses
  end
  get '/perfil', to: 'users#perfil'
  #resources :publications, only: [:create]
end
