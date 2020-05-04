Rails.application.routes.draw do
  get 'configuration/index'
  post 'configuration/update'
  root 'invoices#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :sold_products
  resources :invoices do 
    member do 
      get 'invoice_pdf'
    end
  end
  resources :add_stocks
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
