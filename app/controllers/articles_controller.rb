class ArticlesController < ApplicationController
  def index
    @articles = Article.last(3)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_url
  end

  private

  def article_params
    params.require(:article).permit(:body)
  end
end
