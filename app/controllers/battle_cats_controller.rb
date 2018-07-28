class BattleCatsController < ApplicationController
  before_action :set_battle_cat, only: [:show, :update, :destroy]

  # GET /battle_cats
  def index
    @battle_cats = BattleCat.all

    render json: @battle_cats
  end

  # GET /battle_cats/1
  def show
    render json: @battle_cat
  end

  # POST /battle_cats
  def create
    @battle_cat = BattleCat.new(battle_cat_params)

    if @battle_cat.save
      render json: @battle_cat, status: :created, location: @battle_cat
    else
      render json: @battle_cat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /battle_cats/1
  def update
    if @battle_cat.update(battle_cat_params)
      render json: @battle_cat
    else
      render json: @battle_cat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /battle_cats/1
  def destroy
    @battle_cat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battle_cat
      @battle_cat = BattleCat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def battle_cat_params
      params.require(:battle_cat).permit(:name, :cat_id, :trainer)
    end
end
