class BlogsController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update]

  def new
    @blog = Blog.new
  end

  def create
    @user = User.get_logged_user(session[:user_id])
    @blog = Blog.create(blog_params)
    @user.blogs << @blog
    if @blog.valid?
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
    @blog.update(blog_params)
    if @blog.valid?
      redirect_to(root_path)
    else
      render :edit
    end
  end

  private

  def find_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

end
