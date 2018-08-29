class Api::V1::TrainersController < ApplicationController
  before_action :find_trainer, only: [:show]

  def show
    render json: @trainer
  end

  private

    def find_trainer
      @trainer = Trainer.find_or_create_by(username: params[:username])
    end
end
