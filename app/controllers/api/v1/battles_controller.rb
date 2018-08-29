class Api::V1::BattlesController < ApplicationController
  before_action :set_battle, only: [:show, :update, :destroy]

  def index
    @battles = Battle.all

    render json: @battles
  end

  def show
    render json: @battle
  end

  def create
    @battle = Battle.new(battle_params)

    if @battle.save
      render json: @battle, status: :created
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  def update
    if @battle.update(battle_params)
      render json: @battle
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @battle.destroy
  end

  private
    def set_battle
      @battle = Battle.find(params[:id])
    end

    def battle_params
      params.require(:battle).permit(:challenger_id, :opponent_id, :winner_id, :loser_id)
    end
end
