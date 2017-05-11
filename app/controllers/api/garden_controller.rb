class Api::GardenController < ApplicationController
  def index
	  @garden = current_user.garden
	  render json: @garden.to_json(include: [:user, :garden_plants]) # is this necessary ?
  end



  def create
  	@garden = Garden.new(garden_params)

    if @garden.save
      render json: @garden, status: :created
    else
      render json: @garden.errors, status: :unprocessable_entity
    end
  end


  def destroy
  end


  private
  def garden_params
    params.require(:garden)
          .permit(:name, :size)
          .merge(user_id: current_user.id)
  end


end