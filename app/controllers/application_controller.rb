class ApplicationController < ActionController::Base

  before_action :current_user, :require_login
  before_action :require_logout, only: [:index]
  skip_before_action :require_login, only: [:index]

  def index
    @user = User.new()
  end

  def current_user
    if !!session[:user_id]
      @logged_in_user = User.find(session[:user_id])
    end
  end

  def log_in_user(user_id)
    session[:user_id] = user_id
  end

  def log_out_user
    session.delete(:user_id)
  end

  def require_login
    redirect_to root_path unless @logged_in_user
  end

  def require_logout
    redirect_to coffee_shops_path if @logged_in_user
  end

end
