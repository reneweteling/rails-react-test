class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  def index
    render json: Comment.all
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # GET /comments/new
  def new
    render json: Comment.new
  end

  # GET /comments/1/edit
  def edit
    render json: @comment
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment
    else
      render json: {error: true}
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: {error: true}
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
    render json: {success: true}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:body, :like)
    end
end
