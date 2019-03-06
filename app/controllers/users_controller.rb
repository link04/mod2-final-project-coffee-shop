class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  skip_before_action :require_login, only: [:create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    CoffeeShop.all.sample.users << @user
    if @user.valid?
      log_in_user(@user.id)
      redirect_to(coffee_shops_path)
    else
      render :_new
    end
  end

  def show

  end

  def edit
    if @user == @logged_in_user
      render :edit
    else
      redirect_to @user
      return
    end
  end

  def update
    if @user == @logged_in_user
      @user.update(user_params)
      if @user.valid?
        redirect_to(root_path)
      else
        render :edit
      end
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
