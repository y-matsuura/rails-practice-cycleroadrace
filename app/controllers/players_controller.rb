class PlayersController < ApplicationController
  before_action :set_target_player, only: %i[show edit update destroy]

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.new(player_params)
    if player.save
      redirect_to player
    else
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end

  def update
    if @player.update(player_params)
      redirect_to @player
    else
      redirect_to :back
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :team_id)
  end

  def set_target_player
    @player = Player.find(params[:id])
  end
end