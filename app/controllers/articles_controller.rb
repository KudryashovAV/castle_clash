class ArticlesController < ApplicationController
  def show
  end

  def new
    @article = Article.new
  end
end
