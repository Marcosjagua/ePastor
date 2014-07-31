Rails.application.routes.draw do
  resource :sessions
  resources :usuarios

  root to: "usuarios#index"
end
