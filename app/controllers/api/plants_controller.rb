class Api::PlantsController < ApplicationController
  def index
    @plants = Plant.all
    @garden = current_user.garden
    # @gardenPlants = current_user.garden_plants
    render json: {plants: @plants, garden: @garden}

  end

  def show
  	@plant = Plant.find(params[:id])
  	render json: @plant
  end

end