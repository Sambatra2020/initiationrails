class PostsController < ApplicationController
  def index
    @post = Post.all
    session[:user_id] = 4
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    post_params = params.require(:post).permit(:name,:age,:sexe)
    @post.update(post_params)
    redirect_to posts_path
  end
  def new
    @post = Post.new
  end
  def create
    post = Post.create(post_params)
    redirect_to posts_path(post.id)
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  private
  def post_params
    params.require(:post).permit(:name,:age,:sexe)
  end


end
