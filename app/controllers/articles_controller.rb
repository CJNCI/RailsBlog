class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    #Fetch all articles from DB
  end

  def show
    @article = Article.find(params[:id])
    #Calls article.find which uses the id in the path
    # The value is then stored in the @article variable
    # Where it can be accessed
  end
end
