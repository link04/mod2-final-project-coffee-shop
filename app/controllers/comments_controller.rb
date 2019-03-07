class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    @logged_in_user.comments << @comment
    if @comment.valid?
      flash[:errors] = nil
      redirect_to(blog_path(comment_params[:blog_id]))
    else
      @blog = Blog.find(comment_params[:blog_id])
      flash[:errors] = @comment.errors.full_messages
      render 'blogs/show'
    end
  end

  def destroy
    find_comment
    blog = @comment.blog
    if @comment.user == @logged_in_user
      @comment.destroy
      redirect_to(blog_path(blog))
    else
      redirect_to(blog_path(blog))
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :blog_id)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end

end
