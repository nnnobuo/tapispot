class TapispotController < ApplicationController
  def index
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end


  private
  def post_params
    params.require(:post).permit(:shop_name, :post_title, :post_body).merge(user_id: current_user.id)
  end
end
