class CartedProductsController < ApplicationController

  def index
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render json: carted_products.as_json
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil,
      status: "removed"
    )
    carted_product.save
    render json: carted_product.as_json
  end

end
