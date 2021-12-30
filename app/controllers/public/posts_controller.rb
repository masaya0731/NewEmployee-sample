class Public::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def post_params
    params.require(:posts).parmit(:title, :body, :genre_id, :post_image)
  end
end
