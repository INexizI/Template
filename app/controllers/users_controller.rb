class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  # before_action :authorize_user, only: [:edit, :update]
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, alert: "Could not update, Please try again"
    end
  end

  private

    def set_user
      @user = User.friendly.find(params[:id])
    end

end
