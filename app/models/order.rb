class Order < ApplicationRecord

  has_many :carted_products
  has_many :products, through: :carted_products

  belongs_to :user
  belongs_to :product, optional: true
  # this might be what's keeping my order from saving? can it be removed? or try optional?

end
