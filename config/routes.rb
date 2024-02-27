Rails.application.routes.draw do
  resources :entities
  resources :chart_of_accounts
  resources :analytic_accounts
  resources :synthetic_accounts
end
