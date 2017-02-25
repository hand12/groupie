Rails.application.routes.draw do
  resources :suggest, only: :index
end
