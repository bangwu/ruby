class ArticlesController < ApplicationController
  before_action :before_article, only:[:show, :edit, :update, :destroy]
  after_action :after_article, only:[:create, :update, :destroy]

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
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.delete
    redirect_to articles_path
  end

  private

  def after_article
    #redirect_to articles_path
  end

  def before_article
    @article =Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
