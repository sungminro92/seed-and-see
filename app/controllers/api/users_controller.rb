class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
  	@user = User.find(params[:id])
  	@posts = @user.posts
  	@current_user = current_user
  	render json: { user: @user, posts: @posts, current_user: @current_user }
  end

end
