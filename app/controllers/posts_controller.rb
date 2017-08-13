class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # render text: params[:post].inspect
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def fav
    Post.find(params[:id]).increment!(:fav)
    render :nothing => true
  end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
