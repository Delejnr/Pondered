class PagesController < ApplicationController
  def home
  end

  def about	
  end

  def explore
  	@articles = Article.all
  end
end
