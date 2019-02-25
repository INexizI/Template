class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  def index
    @news = News.all
  end

  def show
  end

  def new
    @news = News.new
  end

  def game
    @news = News.where( option: false )
  end

  def technology
    @news = News.where( option: true )
  end

  def edit
  end

  def create
    @news = News.new(news_params)

    if @news.save
      redirect_to @news
    else
      render :new
    end
  end

  def update
    if @news.update(news_params)
      redirect_to @news
    else
      render :edit, alert: "Could not update, Please try again"
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to @news
  end

  private
    def set_news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:title, :post_pic, :news, :tag_list, :option)
    end
end
