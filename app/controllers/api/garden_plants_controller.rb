class Api::GardenPlantsController < ApplicationController

  def create
  	@gardenPlant = GardenPlant.new(garden_id: currenet_user.garden_id, plant_id: params[:plant_id])

   respond_to do |format|
     if @job.save
       format.html { redirect_to @job, notice: ‘Job was successfully created.’ }
       format.json { render :show, status: :created, location: @job }
     else
       format.html { render :new }
       format.json { render json: @job.errors, status: :unprocessable_entity }
     end
   end
 end
  	# GardenPlant.create(garden_id: current_user.garden.id, plant_id: params[:plant_id])
  	
  end

end