class ProductsController < ApplicationController

  def total_product
    total_product = Product.all
    render json: {total_product: total_product.as_json}
  end

  def product_one
    product_one = Product.find_by(id: 1)
    render json: {product_one: product_one.as_json}
  end
end
