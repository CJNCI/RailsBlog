Rails.application.routes.draw do
  root "articles#index"
  get "/articles", to: "articles#index"
  #Line says that GET /articles requests are mapped
  # to the index action of ArticlesController
end
