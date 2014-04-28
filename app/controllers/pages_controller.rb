class PagesController < ApplicationController
  def home
  end

  def about	
  end

  def explore
  	@posts = post.all
  end
end
