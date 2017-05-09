class Api::PlantsController < ApplicationController
  def index
    @plants = Plant.all
    # @gardenPlants = current_user.garden_plants
    render json: @plants

  end

  def show
  	@plant = Plant.find(params[:id])
  	render json: @plant
  end

end