class Api::GardenPlantsController < ApplicationController

  def create
  	@gardenPlant = GardenPlant.new(garden_id: current_user.garden.id, plant_id: params[:plant_id], name: params[:plant_name], icon: params[:plant_icon])

    if @gardenPlant.save
      render json: @gardenPlant, status: :created
    else
      render json: @gardenPlant.errors, status: :unprocessable_entity
   end
 end
  	# GardenPlant.create(garden_id: current_user.garden.id, plant_id: params[:plant_id])

end