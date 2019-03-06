class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    @logged_in_user.comments << comment
    if comment.valid?
      redirect_to(blog_path(comment_params[:blog_id]))
    else
      flash[:errors] = comment.errors.full_messages
      redirect_to(blog_path(comment_params[:blog_id]))
    end
  end

  def delete
    
  end

  private

  def comment_params
    params.permit(:content, :blog_id)
  end

end
