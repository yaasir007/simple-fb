class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @posts = Flat.new(params_post)
    @posts.save
    redirect_to posts_path
  end

  private

  def params_post
    params.require(:post).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

end
