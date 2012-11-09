class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @Time = Time.now.strftime('%I:%M %p')
  end
end
