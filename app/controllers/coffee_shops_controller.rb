class CoffeeShopsController < ApplicationController

  def index
    @coffee_shop = User.find(session[:user_id]).coffee_shop
    @blogs = @coffee_shop.blogs
  end

end
