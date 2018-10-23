class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :authorize_user, only: [:edit, :update]
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @comment = Comment.new
    @comments = @user.comments.order("created_at DESC")
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

    def user_params
      params.require(:user).permit(:username, :realname, :image, :image_cache, :about, :birthday)
    end

    def set_user
      @user = User.friendly.find(params[:id])
    end

    def authorize_user
      unless current_user.slug == params[:id]
        redirect_to root_url
      end
    end
end
