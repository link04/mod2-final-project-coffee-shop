class CoffeeShopsController < ApplicationController

  def index
    @blogs = User.find(session[:user_id]).coffee_shop.blogs
  end

end
