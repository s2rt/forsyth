require 'rss/2.0'
require 'open-uri'

class RssfeedController < ApplicationController
  def index
    @cart = current_cart
    @latestposts = posts_for('http://stuartforsyth.tumblr.com/rss', 5, false)
  end
  
  
  
end
