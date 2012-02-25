class HomeController < ApplicationController
  
  def index
    @last_four_products = Product.find(:all, :limit=>4, :order=>"id DESC")
    
    #for now the last product but you're going to want the concept
    #of a featured product
      @featured_product = Product.find(:last)
  end
  
  def about
  end
  
end
