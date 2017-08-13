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
    if params[:page].nil?
      redirect_to :action => :index
    else
      redirect_to :action => :show
    end

  end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
