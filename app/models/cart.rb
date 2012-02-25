class Cart < ActiveRecord::Base
  
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
   	current_item = line_items.find_by_product_id(product_id)
   	if current_item
   	  #digital goods, don't let the quantity get higher than 1
   	  current_item.quantity = 1
   	  #current_item.quantity += 1
   	else
   	  current_item = line_items.build(product_id: product_id)
   	end
   	  current_item
 	end
 	
 	def total_price
 	  line_items.to_a.sum{|item| item.total_price}
  end
  
  def cups_of_coffee
    latte_price = 4
    if self.total_price > 0
      return (self.total_price / latte_price*20).round/20.0
    else
     return 0
    end 
  end
end
