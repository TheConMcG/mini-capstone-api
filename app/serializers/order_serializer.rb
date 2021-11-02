class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :quantity, :subtotal, :tax, :total

  has_many :carted_products
  
end
