class CommentsController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!

  def create
    @comment = @puser.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
  end

  def destroy
    @comment = @user.comments.find(params[:id])
    @comment_id = @comment.id
    @comment.destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :id)
    end

    def set_profile
      @user = User.find(params[:id])
    end
end
