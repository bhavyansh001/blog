class ArticlesController < ApplicationController

  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :show, :update, :destroy]

  def correct_user
    @user = current_user.articles.find_by(id: params[:id])
    redirect_to root_path, notice: "Not authorized to view this article" if @user.nil?
  end

  def index
    @articles = current_user.articles
  end

  def new
    @article = current_user.articles.build
  end

  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path, status: :see_other
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :user_id)
  end
end
