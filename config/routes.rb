Rails.application.routes.draw do
  root 'suggests#index'
  resources :suggest, only: :index do
    collection do
      get 'gender'
      get 'age'
    end
  end
end
