class GeneralPagesController < ApplicationController
  def blog
  	@feed_items = Post.paginate(page: params[:page])
  end

  def about
  end

  def contact
  end

  def home
  end
end
