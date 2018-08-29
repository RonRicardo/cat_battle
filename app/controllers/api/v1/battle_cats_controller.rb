class Api::V1::BattleCatsController < ApplicationController
  before_action :set_battle_cat, only: [:show, :update, :destroy]

  def index
    @battle_cats = BattleCat.all

    render json: @battle_cats
  end

  def show
    render json: @battle_cat
  end

  def create
    @battle_cat = BattleCat.new(battle_cat_params)

    if @battle_cat.save
      render json: @battle_cat, status: :created
    else
      render json: @battle_cat.errors, status: :unprocessable_entity
    end
  end

  def update
    if @battle_cat.update(battle_cat_params)
      render json: @battle_cat
    else
      render json: @battle_cat.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @battle_cat.destroy
  end

  private
    def set_battle_cat
      @battle_cat = BattleCat.find(params[:id])
    end

    def battle_cat_params
      params.require(:battle_cat).permit(:name, :cat_id, :team_id)
    end
end
