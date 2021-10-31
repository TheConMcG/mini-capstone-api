class Product < ApplicationRecord

  # def friendly_prep_time
  #   hours = prep_time / 60 
  #   minutes = prep_time % 60
  #   return "This recipe takes #{hours} hour(s) and #{minutes} minute(s) to make this recipe."
  # end

  belongs_to :supplier

  has_many :orders

  has_many :carted_products

  has_many :images

  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, :price, presence: true
  validates :name, uniqueness: true
  validates :description, length: {in: 10..500}
  validates :price, numericality: {greater_than: 0}

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price < 10
    # if price.to_i < 10
    #   return true
    # else
    #   return false
    # end
  end

  def tax
    @tax = price.to_i * 0.09
    return @tax
  end

  def total
    @total = price.to_i + tax
    return @total
  end

  # def category_name
  #   name = category.name
  # end
  # return to later?

end
