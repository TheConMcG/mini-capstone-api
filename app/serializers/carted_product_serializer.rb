class CartedProductSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :quantity, :order_id, :status
end
