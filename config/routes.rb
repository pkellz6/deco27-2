Rails.application.routes.draw do
    get "/" => "index#index"
    get "/categories" => "categories#index"
end
