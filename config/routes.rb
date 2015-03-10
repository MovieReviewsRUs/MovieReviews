Rails.application.routes.draw do
  resources :movies, only: [:index, :create, :show, :update, :destroy] do
    resources :reviews, only: [:index, :create, :update, :destroy]
  end
  resources :users, defaults: { format: :json }, only: [:show, :index, :create] do
    post 'sign_in', on: :collection
  end
end






# Rails.application.routes.draw do
#   namespace :api do
#     namespace :v1 do
#       resources :posts, only: [:index]
#       resources :users, defaults: { format: :json }, only: [:show, :index, :create] do
#         post 'sign_in', on: :collection
#       end
#     end
#   end
# end
