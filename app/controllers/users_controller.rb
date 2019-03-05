class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    hash = user_params
    hash[:coffee_shop] = CoffeeShop.all.sample


    @user = User.create(hash)
    CoffeeShop.all.sample.users << @user
    if @user.valid?
      redirect_to(root_path)
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    @user.update(user_params)
    if @user.valid?
      redirect_to(root_path)
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:full_name ,:user_name, :password, :password_confirmation)
  end
end
