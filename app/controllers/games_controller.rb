class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    if params[:tag].present?
      @games = Game.tagged_with(params[:tag])
    else
      @games = Game.all
    end
  end

  def show
    @comment = Comment.new
    @comments = @game.comments.order("created_at DESC")
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game
    else
      render :new
    end
  end

  def update
    if @game.update(game_params)
      redirect_to @game
    else
      render :edit, alert: "Could not update, Please try again"
    end
  end

  def destroy
    @game.destroy
  end

  private

    def game_params
      params.require(:game).permit(:title, :description, :poster, :release, :genre, :tag_list, :studio_id)
    end

    def set_game
      @game = Game.friendly.find(params[:id])
    end
end
