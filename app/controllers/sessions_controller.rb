class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id

    redirect_to(root_path)
  end

  def destroy
    session.delete(:user_id)

    redirect_to(root_path)
  end
end
