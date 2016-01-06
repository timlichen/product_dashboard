class CommentsController < ApplicationController
  def index
    @comments = Comment.eager_load(:product)



  end

  def create
    puts params[:text]
    @comment = Comment.create(comment: params[:text], product_id: params[:id])
    redirect_to "/products/" + params[:id]
  end

  private

  # def comment_params
  #   params.require(:comment).permit(:text)
  # end

end
