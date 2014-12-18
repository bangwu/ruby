class ArticlesController < ApplicationController
  before_action :before_article, only:[:show, :edit, :update, :destroy]

  def show
  end
  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit
    #@article =Article.find(params[:id])
  end

  def update
    #@article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    #@article =Article.find(params[:id])
    @article.delete
    redirect_to articles_path
  end

  def before_article
    @article =Article.find(params[:id])
  end
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
