Rails.application.routes.draw do
  resources :charges
  get 'charges/category', :to => 'category#charges'
  resources :payments
  resources :categories
end
