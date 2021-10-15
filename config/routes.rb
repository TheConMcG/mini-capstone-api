Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/products" => "products#index" #user sees all products

  get "/products/:id" => "products#show" #user sees particular product

  post "/products" => "products#create" #
end

