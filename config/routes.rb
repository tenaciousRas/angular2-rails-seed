Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'

  namespace :api, defaults: { format: :json } do
    resources :products, only: [:index, :show, :create, :update]
  end
end
