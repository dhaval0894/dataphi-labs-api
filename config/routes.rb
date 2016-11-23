Rails.application.routes.draw do

  namespace :api do
    resources :patients, only: [:index, :create]  do
      get :search, on: :collection
    end
  end
  
end
