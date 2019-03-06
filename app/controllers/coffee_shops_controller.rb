class CoffeeShopsController < ApplicationController

  before_action :require_login
  skip_before_action :require_logout

  def index
    @coffee_shop = User.find(session[:user_id]).coffee_shop
    @blogs = @coffee_shop.blogs
  end

end
