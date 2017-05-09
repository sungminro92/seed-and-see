class Api::PlantsController < ApplicationController
  def index
  	@garden = User.find(params[:id]).garden
  	render json: @garden
  	
  end

  def new
  end

  def destroy
  end

end