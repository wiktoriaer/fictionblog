class ArticlesController < ApplicationController
  #before_action :authenticate_user!, except: [:index, :show]#

  def new
  end

  def index
  end

  def create
    @article = Article.new(params.require(:article))
    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:article])
  end

  def wiktoria
  end
end
