class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to(root_path)
    else
      flash[:errors] = 'Incorrect user name or password'
      redirect_to(login_path)
    end


  end

  def destroy
    session.delete(:user_id)

    redirect_to(root_path)
  end
end
