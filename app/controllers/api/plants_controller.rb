class Api::PlantsController < ApplicationController
  # before_action: :plant_params, only[:show]

  def index
    @plants = Plant.all
    render json: {plants: @plants, garden: @garden}

    if current_user.garden == nil
      @garden = current_user.garden
      @garden_plants = @garden.garden_plants.length
      render json: {plants: @plants, garden: @garden, garden_plants: @garden_plants}
    end
  end

  def show

    @plant_name = params[:plant_name].downcase
    url= "https://api.nutritionix.com/v1_1/search/#{@plant_name}?fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=54affe01&appKey=9611b93bbce041daf0bdbc242fe20ba0"
    @response = HTTParty.get(url)
    render json: @response
  end

  # private 
  # def plant_params
  #   @plant = Plant.friendly.find(params[:id].to_s.downcase)
    
  # end


end