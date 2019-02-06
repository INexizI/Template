class PublishersController < ApplicationController
  before_action :set_publisher, only: [:show, :edit, :update, :destroy]

  def index
    @publishers = Publisher.all
  end

  def show
  end

  def new
    @publisher = Publisher.new
  end

  def edit
  end

  def create
    @publisher = Publisher.new(publisher_params)

    if @publisher.save
      redirect_to @publisher
    else
      render :new
    end
  end

  def update
    if @publisher.update(publisher_params)
      redirect_to @publisher
    else
      render :edit, alert: "Could not update, Please try again"
    end
  end

  def destroy
    @publisher.destroy
  end

  private

    def publisher_params
      params.require(:publisher).permit(:name, :description, :logotype)
    end

    def set_publisher
      @publisher = Publisher.friendly.find(params[:id])
    end
end
