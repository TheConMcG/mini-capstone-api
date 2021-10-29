class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :total, :supplier_id

  has_many :images
  belongs_to :supplier
  has_many :orders
end
