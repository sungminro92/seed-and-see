class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    @currentUser = current_user
    #@users = User.all

    @posts.each { |x|
      x.description =  User.find(x.user_id).name # lol
    }

    render json: {posts: @posts, currentUser: @currentUser}
    # render json: @posts.to_json(include: :user)

  end
  
  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @comments = @post.comments
    user_array = []
    @comments.each { |x| # lol
      user_array.push(User.find(x.user_id))
    }

    @currentUser = current_user
    render :json => {post: @post, user: @user, comments: @comments, currentUser: @currentUser, user_array: user_array}
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

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy

    render json: '', status: :no_content
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