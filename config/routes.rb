Rails.application.routes.draw do
  root 'index#index'

  get "/" => "index#index"
  get "/categories" => "categories#index"
  get "/gallery" => "gallery#index"
  get "/contact" => "contact#index"
  get "/porcelains" => "porcelains#index"
  get "/walls" => "walls#index"
  get "/doors" => "doors#index"
  get "/hardwood_floors" => "hardwood_floors#index"
  get "/stairs" => "stairs#index"
  get "/porcelains/1" => "porcelains#product"
devise_for :admins
end
