class ArticlesController < ApplicationController
  before_filter :set_article, only: [:show]

  def index
    render json: Article.all
  end

  def show
    render json: @article
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
