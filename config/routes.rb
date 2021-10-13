Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/all_products", controller: "products", action: "total_product"

  get "/first_product", controller: "products", action: "product_one"

end

