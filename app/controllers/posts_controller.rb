class PostsController < ApplicationController
	def index
		@posts = Post.all
		render json: @posts
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
