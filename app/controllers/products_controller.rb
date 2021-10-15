class ProductsController < ApplicationController

  # def total_product
  #   total_product = Product.all
  #   render json: {total_product: total_product.as_json}
  # end

  # def product_one
  #   product_one = Product.find_by(id: 1)
  #   render json: {product_one: product_one.as_json}
  # end

  # def query
  #   day = params["day"]
  #   render json: {message: "today is #{day}"
  # end
    
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description]
    )
    product.save
    render json: product.as_json
  end
    
end
