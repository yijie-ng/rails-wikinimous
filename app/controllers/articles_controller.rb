class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  # create
  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  # read
  def show
    @article = Article.find(params[:id])
  end

  # update
  # delete
  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
