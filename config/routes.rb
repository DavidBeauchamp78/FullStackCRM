Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'customers/', to: 'customer#index', as: 'customer' 
  get 'customers/alphabetized', to: 'customer#alphabetized', as: 'customer/alphabetized' 
  get 'customers/missing_email', to: 'customer#missing_email', as: 'customer/missing_email'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
