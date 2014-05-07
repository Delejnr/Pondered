class PagesController < ApplicationController
  def home
  end

  def about	
  end

  def explore
  	@categories = Category.all
  end
end
