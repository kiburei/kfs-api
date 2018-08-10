Rails.application.routes.draw do
  resources :charges
  resources :payments
  resources :categories
end
