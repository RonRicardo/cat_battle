class BattlesController < ApplicationController
  before_action :set_battle, only: [:show, :update, :destroy]

  # GET /battles
  def index
    @battles = Battle.all

    render json: @battles
  end

  # GET /battles/1
  def show
    render json: @battle
  end

  # POST /battles
  def create
    @battle = Battle.new(battle_params)

    if @battle.save
      render json: @battle, status: :created, location: @battle
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /battles/1
  def update
    if @battle.update(battle_params)
      render json: @battle
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /battles/1
  def destroy
    @battle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battle
      @battle = Battle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def battle_params
      params.require(:battle).permit(:challenger_id, :opponent_id, :winner_id, :loser_id)
    end
end
