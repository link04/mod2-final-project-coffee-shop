class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    hash = user_params
    hash[:coffee_shop] = CoffeeShop.all.sample

    @user = User.create(hash)
    if @user.valid?
      redirect_to(root_path)
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:full_name ,:user_name, :password, :password_confirmation)
  end
end
