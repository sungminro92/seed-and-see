class Api::CommentsController < ApplicationController
  def index

  end

  def show

  end

  def create
  	@comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def edit

  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    render json: '', status: :no_content
  end

  private
  # Only allow a trusted parameter "white list" through.
  # Also we want to add the current_user's id to the hash
  # We can do that with .merge
  def comment_params
    params.require(:comment)
          .permit(:content)
          .merge(post_id: params[:id], user_id: current_user.id)
  end

end
