Rails.application.routes.draw do
  devise_for :admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'index#index'

  # get "/" => "index#index"
  # get "/categories" => "categories#index"
  resources :enquiries
  get "/gallery" => "gallery#index"
  get "/contact" => "enquiries#new"
  # get "/porcelains" => "porcelains#index"
  # get "/walls" => "walls#index"
  # get "/doors" => "doors#index"
  # get "/hardwood_floors" => "hardwood_floors#index"
  # get "/stairs" => "stairs#index"
  # get "/porcelains/1" => "porcelains#product"

  get 'admin/home', as: :admin
  get 'admin' => 'admin#home'

  resources :categories do
    resources :products
  end
end
