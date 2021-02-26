class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.order(created_at: :desc).includes(:user)
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to :posts
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
