# app/controllers/client_controller.rb
# We need to make a Rails controller that will serve up HTML/CSS/JS
# Then this will be used with Angular.
class ClientController < ApplicationController
  layout false

  def index
  	# @plants = Plant.all
  end

  def show
  	@user = User.find[params(:id)]
  end 
end
# this controller action will render the HTML file.