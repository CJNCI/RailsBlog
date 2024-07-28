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

  def new #Instantiates new article but doesnt save
    @article = Article.new
  end

  def create #Instantiates new article with values for title and body and tries to save

    @article = Article.new(title: "...", body: "...") # Dummy values

    #If article is saved successfully, browser redirected to article's page
    # Else, action redisplays the form with status code Unprocessable Entity
    if @article.save
      redirect_to article
    else
      render :new, status: unprocessable_entity
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

end
