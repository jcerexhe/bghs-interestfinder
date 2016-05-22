Rails.application.routes.draw do

  resources :events
  resources :interest_groups do
    member do
      get :join
      delete :leave
    end
  end

  devise_for :users

  root 'home#index'

end
