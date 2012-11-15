class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @cart = current_cart
    @Time = Time.now.strftime('%I:%M %p')
    @counter = session[:counter]
    @counter.nil? ? @counter = 1 : @counter += 1
    session[:counter] = @counter
  end
end
