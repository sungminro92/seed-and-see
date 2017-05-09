class PostsController < ApplicationController
	def index
		@posts = Post.all
		respond_to do |format|
			format.json { render :json => @posts.to_json(:include => :user) }
		end
		# render json: { posts: @posts, users: @users }
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments
		render json: { post: @post, comments: @comments }
	end

	def new
		
	end

	def create
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
