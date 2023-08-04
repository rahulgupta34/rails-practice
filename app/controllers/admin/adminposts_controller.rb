class Admin::AdminpostsController < ApplicationController
  before_action :set_post, only: [:edit, :update]
  
  def index
    @posts = Post.includes(:roles,:users)
  end

  def edit
  end

  def update
    if @post.update(post_params)
        redirect_to url_for([:admin,:adminposts]), notice: "Post Role Has Been Update Successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  
  def set_post
      @post = Post.find(params[:id])
  end

  def post_params
      params.require(:post).permit(role_ids: [])
  end
end
