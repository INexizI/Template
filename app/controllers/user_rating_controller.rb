class UserRatingController < ApplicationController
  before_action :set_user_rating

  def create
    @user_rating.user = current_user
  end

  def update
    if @user_rating.update(user_rating_params)
      redirect_to @game
    else
      render :edit, alert: "Could not update, Please try again"
    end
  end

  private

    def user_rating_params
      params.require(:user_rating).permit(:user_id, :game_id, :rating)
    end

    def set_user_rating
      @user_rating = UserRating.find(params[:id])
    end
end
