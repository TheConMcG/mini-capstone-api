class Supplier < ApplicationRecord

  has_many :products

  # def products
  #   Product.where(supplier_id: id)
  # end

  #look up .map in skills and figure out how to call the product names for the supplier
  # def product_names
  #   products = Product.where(supplier_id: id)
  #   products.each do
  #     name = 
  #     return name
  #   end
  # end

end
