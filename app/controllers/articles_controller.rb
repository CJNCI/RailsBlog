# frozen_string_literal: true

# Handles CRUD logic for articles
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # Fetch all articles from DB
  end

  def show
    @article = Article.find(params[:id])
    # Calls article.find which uses the id in the path
    # The value is then stored in the @article variable
    # Where it can be accessed
  end

  # Instantiates new article but doesnt save
  def new
    @article = Article.new
  end

  # Instantiates new article with values for title and body and tries to save
  def create
    @article = Article.new(article_params)

    # If article is saved successfully, browser redirected to article's page
    # Else, action redisplays the form with status code Unprocessable Entity
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Edit and Update actions resemble 'new' and 'create'
  def edit
    @article = Article.find(params[:id])
  end

  def update
    # Re-fetches article from db, and attempts to update with submitted
    # form data filtered by article_params

    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    # Finds article with parameter of id
    # and saves it to @article
    # Article object is then deleted from db
    @article.destroy

    redirect_to root_path, status: :see_other
    # Redirect to home page, 'see_other' sets
    # HTTP status code for redirect action
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
