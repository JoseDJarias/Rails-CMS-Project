Rails.application.routes.draw do

  devise_for :admins

  namespace :admin do
    resources :about, :skills, :projects, :contacts
  end

  namespace :user do
    resources :user, only: [:index, :show]
  end
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "home#index"
  # Defines the root path route ("/")
  # root "posts#index"
end
