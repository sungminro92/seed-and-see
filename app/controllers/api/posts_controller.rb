class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    # @user = current_user
    render json: @posts.to_json(include: :user)
    # currentUser: @user
    # render json: => @posts, :include => {:user}
    # render :json @posts.to_json({:include => :user})

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

  def edit

  end

  def update
    # @post = Post.find(params[:id])
    @post = current_user.posts.find(params[:id])

    if @post.update(post_params)
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @post = current_user.posts.find(params[:id])

  #   @post.destroy

  #   render json: '', status: :no_content
  # end

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