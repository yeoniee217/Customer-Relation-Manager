Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "customers#index"
  resources "customers", only: %i[index]
  get "/customers/alphabetized", to: "customers#alphabetized"
  get "/customers/missing_email", to: "customers#missing_email"
end
