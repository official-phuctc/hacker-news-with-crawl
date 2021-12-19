include ArticlesHelper

class ArticlesController < ApplicationController
  # GET /articles
  def index
    @articles = get_articles(1)
  end

  def load_more
    @articles = get_articles(params[:page])

    render json: { status: 200, articles: @articles }
  end
end
