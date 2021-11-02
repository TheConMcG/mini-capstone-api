class OrdersController < ApplicationController
  
  before_action :authenticate_user
  # only: [:index, :show]
  # except: [:create, :update]

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    subtotal = 0
    tax = 0
    total = 0
    carted_products.each do |item|
      quantity = item.quantity
      subtotal = subtotal + (item.product.price * quantity)
      tax = tax + (item.product.tax * quantity)
      total = total + (item.product.total * quantity)
    end
    order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )
    order.save
    carted_products.each do |item|
      item.status = "purchased"
      item.order_id = order.id
      item.save
    end
    render json: order
  end


  def index
    orders = Order.where(user_id: current_user.id)
    render json: orders
  end

  
  def show
    order = Order.find_by(id: params[:id], user_id: current_user.id)
    render json: order
  end

end