class UserScoresController < ApplicationController
  before_action :set_user_score, only: [:show, :edit, :update, :destroy]

  def index
    @user_scores = UserScore.all
  end

  def show
  end

  def new
    # @user_score = Game.find(params[:id])
    @user_score = UserScore.new
  end

  def edit
  end

  def create
    @user_score = UserScore.new(user_score_params)
    @user_score.user_id = current_user.id
    # @user_score.game_id = 

    if @user_score.save
      redirect_to @user_score
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @user_score.update(user_score_params)
        format.html { redirect_to @user_score, notice: 'User score was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_score }
      else
        format.html { render :edit }
        format.json { render json: @user_score.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_score.destroy
    respond_to do |format|
      format.html { redirect_to user_scores_url, notice: 'User score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def user_score_params
      params.require(:user_score).permit(:uscore)
    end

    def set_user_score
      @user_score = UserScore.find(params[:id])
    end
end
