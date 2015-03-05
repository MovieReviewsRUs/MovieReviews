Rails.application.routes.draw do
  resources :movies, only: [:index, :create, :show, :update, :destroy]
end
