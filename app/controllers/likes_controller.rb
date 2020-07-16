class LikesController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = current_account.posts.build(post_params)
    if @post.save
      redirect_to dashboard_path, notice: "Post created successfully"
    else
      render 'new', notice: "Unable to create post"
    end
  end

  def show
  end

  private

    def post_params
      params.require(:post).permit(:description, :image, :image_cache)
    end
end
