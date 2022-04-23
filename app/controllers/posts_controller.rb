class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:edit, :update, :show]

  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :index
    end
  end

  def edit
    unless current_user.id == @post.user_id && @post = nil
      redirect_to root_path
    end
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :index
    end
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:image_id, :title, :description, :date, :club_id).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find_by(id:params[:id])
  end
end
