class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user_id = current_user.id  #this line...
    if @comment.save
    redirect_to article_path(@article)
    else
    redirect_to article_path(@article), notice: "Couldn't"
    end
  end

private
  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
