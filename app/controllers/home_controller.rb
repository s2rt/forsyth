class HomeController < ApplicationController
  
  def index
    @last_four_products = Product.find(:all, :limit=>4, :order=>"id DESC")

    #for now the last product but you're going to want the concept
    #of a featured product

    @featured_product = Product.find(:last)
    
    if Product.where(:is_featured => true).exists then
      @featured_product = Product.where(:is_featured => true).first
    end
    
    @cart = current_cart
    @latestposts = posts_for('http://stuartforsyth.tumblr.com/rss', 8, false)
  end
  
  def about
    @cart = current_cart
  end
  
end
