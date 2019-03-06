class LikesController < ApplicationController

  def create
    @blog = Blog.find(like_params[:blog_id])
    Like.create(like_params)
    redirect_to @blog
  end

  def destroy

    @like = Like.find(params[:id])
    @blog = Blog.find(@like.blog_id)
    @like.destroy
    redirect_to @blog
  end

  def like_params
    params.permit(:blog_id, :user_id)
  end

end
