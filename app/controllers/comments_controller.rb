class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comments = @post.comments.new(comment_params)
    if @comments.save
       redirect_to post_path(@post.id)
    else
      # @post = @comment.post
      # @comments = @post.comments
      render "posts/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:visual_reading, :question, :answer).merge(user_id: current_user.id, post_id: params[:post_id])
  end

end
