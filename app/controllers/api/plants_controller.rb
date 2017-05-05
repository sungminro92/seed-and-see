class Api::PlantsController < ApplicationController
  def index
    @plants = Plant.all
    render json: @plants
  end

 #  def create
 #  	@plant = Plant.new(plant_params)

 #  	if @plant.save
	#   	render json: @plant
	# else
	# 	render json: "no it d"
	# end
end