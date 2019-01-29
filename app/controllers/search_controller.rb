class SearchController < ApplicationController
  def index
  end

  def search
    @games = Game.ransack(title_cont: params[:q]).result(distinct: true)
    @studios = Studio.ransack(name_cont: params[:q]).result(distinct: true)
    @news = News.ransack(title_cont: params[:q]).result(distinct: true)
    @users = User.ransack(username_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json {
        @games = @games.limit(5)
        @studios = @studios.limit(5)
        @news = @news.limit(5)
        @users = @users.limit(5)
      }
    end
  end
end
