class TeamsController < ApplicationController
  before_action :set_target_team, only: %i[show edit update destroy]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.new(team_params)
    if team.save
      redirect_to team
    else
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to @team
    else
      redirect_to :back
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :category_id)
  end

  def set_target_team
    @team = Team.find(params[:id])
  end
end
