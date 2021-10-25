class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :total, :supplier_id, :supplier, :images
end
