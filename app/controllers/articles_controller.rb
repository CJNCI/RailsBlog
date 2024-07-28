class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    #Fetch all articles from DB
  end
end
