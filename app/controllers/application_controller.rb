class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_cart
    Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
	  cart = Cart.create
  	session[:cart_id] = cart.id
  	cart
	end
	
	def posts_for(feed_url, length=2, perform_validation=false)
    posts = []
    open(feed_url) do |rss|
      posts = RSS::Parser.parse(rss, perform_validation).items
    end
    posts[0..length - 1] if posts.size > length
  end

    	
end
