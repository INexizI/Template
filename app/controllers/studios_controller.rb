class StudiosController < ApplicationController
  before_action :set_studio, only: [:show, :edit, :update, :destroy]

  def index
    @studios = Studio.all
  end

  def show
  end

  def new
    @studio = Studio.new
  end

  def edit
  end

  def create
    @studio = Studio.new(studio_params)

    if @studio.save
      redirect_to @studio
    else
      render :new
    end
  end

  def update
    if @studio.update(studio_params)
      redirect_to @studio
    else
      render :edit, alert: "Could not update, Please try again"
    end
  end

  def destroy
    @studio.destroy
  end

  private

    def studio_params
      params.require(:studio).permit(:name, :description, :logotype)
    end

    def set_studio
      @studio = Studio.find(params[:id])
    end
end
