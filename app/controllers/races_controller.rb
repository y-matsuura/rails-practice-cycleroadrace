class RacesController < ApplicationController
  before_action :set_target_race, only: %i[show edit update destroy]

  def index
    @races = Race.all
  end

  def new
    @race = Race.new
  end

  def create
    race = Race.new(race_params)
    if race.save
      redirect_to race
    else
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end

  def update
    if @race.update(race_params)
      redirect_to @race
    else
      redirect_to :back
    end
  end

  private

  def race_params
    params.require(:race).permit(:name)
  end

  def set_target_race
    @race = Race.find(params[:id])
  end
end