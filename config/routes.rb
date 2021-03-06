Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :exercises
  resources :evaluations do
    member do
      get :new_register
      post :register
    end
  end
  
  get :dashboard, to: 'dashboards#index', as: 'dashboards'


  root to: 'dashboards#index'
end
