Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"
  
  post "/suppliers" => "suppliers#create"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"

  get "/orders" => "orders#index"
  
  get "/orders/:id" => "orders#show"

  patch "/images/:id" => "images#update"

  get "/carted_products" => "carted_products#index"

  post "/carted_products" => "carted_products#create"

end

