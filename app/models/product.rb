class Product < ApplicationRecord

  # def friendly_prep_time
  #   hours = prep_time / 60 
  #   minutes = prep_time % 60
  #   return "This recipe takes #{hours} hour(s) and #{minutes} minute(s) to make this recipe."
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

end
