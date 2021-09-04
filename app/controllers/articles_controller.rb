class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  #authenticity_tokenのerror回避のため
  # protect_from_forgery
  skip_before_action :verify_authenticity_token

  def index
    @articles = Article.order(created_at: :desc)
    # flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def create
    @articles = Article.create(article_params)
    if @articles.save
      redirect_to @articles, notice: '作成できました'
    else
      render :new, alert: '作成できませんでした'
    end
  end

  def update
    @articles = Article.find(params[:id])
    @articles = Article.new(article_params)
    if @articles.update
      redirect_to @articles, notice: '更新できました'
    else
      render :edit, alert: '更新できませんでした'
    end
  end

  def destroy
    if @articles.destroy
      redirect_to root_path, notice: '削除できました'
    else
      redirect_to root_path, alert: '削除できませんでした'
    end
  end

  private

  def find_article
    @articles = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:cloth_name, :cloth_price, :image)
  end

end
