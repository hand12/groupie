Rails.application.routes.draw do
  root 'suggests#index'
  resources :suggests, only: :index do
    collection do
      get 'gender'
      get 'age'
    end
  end
end
