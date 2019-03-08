class BlogsController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update]

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    @logged_in_user.blogs << @blog
    if @blog.valid?
      redirect_to(root_path)
    else
      render :new
    end
  end

  def show
    @popular_blogs = Blog.most_popular_blogs(@logged_in_user)
    @comment = Comment.new()
  end

  def edit

  end

  def update
    if @blog.user == @logged_in_user
      @blog.update(blog_params)
      if @blog.valid?
        redirect_to(blog_path(@blog))
      else
        render :edit
      end
    else
      #flash[:errors] = "Unathorized author."
      redirect_to(blog_path(@blog))
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
