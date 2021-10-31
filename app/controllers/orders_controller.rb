class OrdersController < ApplicationController
  
  before_action :authenticate_user
  # only: [:index, :show]
  # except: [:create, :update]

  def create
    product = Product.find_by(id: params[:product_id])

    order = Order.new(
      user_id: current_user.id,
      subtotal: product.price * params[:quantity],
      tax: product.tax * params[:quantity],
      total: product.total * params[:quantity]
    )
    order.save
    render json: order
  end

  def index
    orders = Order.where(user_id: current_user.id)
    render json: orders.as_json
  end

  def show
    order = Order.find_by(id: params[:id], user_id: current_user.id)
    render json: order.as_json
  end

end