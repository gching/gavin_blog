
class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def destroy
  end

  def index
  	@posts  = Post.paginate(page: params[:page])

  end

end