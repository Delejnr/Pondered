class PagesController < ApplicationController
  def home
  end

  def about	
  end

  def explore
  	@posts = Post.all
  end
end
