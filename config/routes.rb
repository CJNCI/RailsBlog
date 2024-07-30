# frozen_string_literal: true

Rails.application.routes.draw do
  root 'articles#index'
  # Maps the root path of our app to the appropriate
  # controller action

  # get "/articles", to: "articles#index"
  # Line says that GET /articles requests are mapped
  # to the index action of ArticlesController

  # get "/articles/:id", to: "articles#show"
  # Get route that includes :id which is a route parameter
  # Can also be used as a parameter value in the
  # show action of ArticlesController

  resources :articles
end
