Rails.application.routes.draw do
  resource :suggest, only: :index
end
