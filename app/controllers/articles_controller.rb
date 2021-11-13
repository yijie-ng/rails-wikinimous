class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  # create

  # read
  def show
    @article = Article.find(params[:id])
  end

  # update
  # delete
end
