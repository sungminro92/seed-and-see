class Api::PlantsController < ApplicationController
  def index
    @users = User.all
    render json: @plants
  end
