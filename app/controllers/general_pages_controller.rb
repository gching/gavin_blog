class GeneralPagesController < ApplicationController
  def home
  	@feed_items = Post.paginate(page: params[:page])
  end

  def about
  end

  def contact
  end
end
