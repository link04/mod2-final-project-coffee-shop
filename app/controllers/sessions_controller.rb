class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]
  before_action :require_logout, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
      log_in_user(@user.id)
      redirect_to(coffee_shops_path)
    else
      flash[:errors] = 'Incorrect user name or password'
      redirect_to(login_path)
    end
  end

  def destroy
    log_out_user
    redirect_to(root_path)
  end

end
