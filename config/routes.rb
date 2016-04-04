Rails.application.routes.draw do
  root 'index#index'

  # get "/" => "index#index"
  # get "/categories" => "categories#index"
  get "/gallery" => "gallery#index"
  get "/contact" => "contact#index"
  # get "/porcelains" => "porcelains#index"
  # get "/walls" => "walls#index"
  # get "/doors" => "doors#index"
  # get "/hardwood_floors" => "hardwood_floors#index"
  # get "/stairs" => "stairs#index"
  # get "/porcelains/1" => "porcelains#product"

  get 'admin/home', as: :admin
  get 'admin' => 'admin#home'

  devise_for :admins
  devise_scope :admin do
    get 'sign_in', :to => 'devise/sessions#new', as: :sign_in
    get 'sign_up', :to => 'devise/registrations#new', as: :sign_up
    get 'sign_out', :to => 'devise/sessions#destroy', as: :sign_out  end

  resources :categories do
  resources :products

end



end
