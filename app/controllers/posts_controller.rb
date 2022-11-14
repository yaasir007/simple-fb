class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post_new = Post.new
  end

  def create
    @posts = Post.new(params_post)
    @posts.save
    redirect_to posts_path
  end

  def destory
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def params_post
    params.require(:post).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

end
