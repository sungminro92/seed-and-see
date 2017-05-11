class Api::PlantsController < ApplicationController
  # before_action: :plant_params, only[:show]

  def index
    @plants = Plant.all
    @garden = current_user.garden
    @garden_plants = @garden.garden_plants.length
    # @gardenPlants = current_user.garden_plants

    # url = "https://api.nutritionix.com/v1_1/search/#{serach_params}?fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=[54affe01]&appKey=[9611b93bbce041daf0bdbc242fe20ba0]"
    # results_json = HTTParty.get(url)

    # search_params = {
    # offset: 0,
    # limit: 50,
    # fields: ['brand_id', 'brand_name', 'item_id', 'item_name', 'nf_calories'],
    # query: 'potato'
    # }

    # app_id = '54affe01'
    # app_key = '9611b93bbce041daf0bdbc242fe20ba0'
    # provider = Nutritionix::Api_1_1.new(app_id, app_key)
    # search_params = {
    # offset: 0,
    # limit: 50,
    # fields: ['brand_id', 'brand_name', 'item_id', 'item_name', 'nf_calories'],
    # query: 'potato'
    # }

    # results_json = provider.nxql_search(search_params)
    # puts "Results: #{results_json}"


    render json: {plants: @plants, garden: @garden, garden_plants: @garden_plants}
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