class ScoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_scorable
  before_action :set_score, only: [:edit, :update, :destroy]

  def create
    @score = @scorable.scores.new(score_params)
    @score.user = current_user
    respond_to do |format|
      if @score.save
        format.html {redirect_to @scorable}
        format.json {render json: @score}
      else
        format.html {render :back}
        format.json {render json: @score.errors}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @score.update(score_params)
        format.html {redirect_to @scorable}
        format.json {render json: @score}
      else
        format.html {render :back}
        format.json {render json: @score.errors}
      end
    end
  end

  def destroy
    @score.destroy if @score.errors.empty?
    respond_to do |format|
      format.html {redirect_to @scorable}
      format.json {render json: @score}
    end
  end

  private

    def set_scorable
      resource, id = request.path.split('/')[1,2]
      @scorable = resource.singularize.classify.constantize.find(id)
    end

    def set_score
      begin
        @score = @scorable.scores.find(params[:id])
      rescue => e
        logger.error "#{e.class.name} : #{e.message}"
        @score = @scorable.scores.build
        @score.errors.add(:base, :recordnotfound, message: "That record doesn't exist. Maybe, it is already destroyed.")
      end
    end

    def score_params
      params.require(:score).permit(:score)
    end
end
