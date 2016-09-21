Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'days#index'
  resources :user do
    resources :profiles
  end 
  resources :profiles do
    resources :days
  end

end
