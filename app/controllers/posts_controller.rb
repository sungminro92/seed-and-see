class PostsController < ApplicationController
	def index
		@posts = Post.all
		render :json @posts.to_json (include: :user)
		# render json: { posts: @posts, users: @users }
	end

	def show
		@post = Post.find(params[:id])
		# render json: { post: @post(include: :user)}
		render json: @post
		#render :json @post.to_json (include: :user)
			#, comments: @comments }
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
