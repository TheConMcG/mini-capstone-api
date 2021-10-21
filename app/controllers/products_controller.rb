class ProductsController < ApplicationController
    
  def index
    products = Product.all
    render json: products
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price].to_i,
      image_url: params[:image_url],
      description: params[:description]
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.save
    render json: product
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Recipe has been removed."}
  end
    
end
