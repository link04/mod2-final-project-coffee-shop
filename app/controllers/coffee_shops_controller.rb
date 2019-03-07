class CoffeeShopsController < ApplicationController

  before_action :require_login
  skip_before_action :require_logout

  def index
    @blogs = CoffeeShop.coffee_shop_blogs(@logged_in_user)
    @coffee_shop = @logged_in_user.coffee_shop
  end

end
