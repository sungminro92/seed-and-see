class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    @user = current_user
    render json: { posts: @posts, currentUser: @user }
  end

  def show
  	@post = Post.find(params[:id])
    @comments = @post.comments
      render json: { post: @post, comments: @comments }
  end


  def create
  	@post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
  # Also we want to add the current_user's id to the hash
  # We can do that with .merge
  def post_params
    params.require(:post)
          .permit(:title, :description, :img_url)
          .merge(user_id: current_user.id)
  end

end

