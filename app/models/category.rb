class Category < ApplicationRecord

  def products
    products = CategoryProduct.find_by(:category_id)
  end

  has_many :CategoryProduct

end
