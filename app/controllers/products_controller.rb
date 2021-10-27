class ProductsController < ApplicationController
    
  before_action :authenticate_admin, only:[:create, :update, :delete]
  # only: [:index, :show]
  # except: [:create, :update]

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
      description: params[:description],
      supplier_id: params[:supplier_id],
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
    product.description = params[:description] || product.description
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Recipe has been removed."}
  end
    
end
