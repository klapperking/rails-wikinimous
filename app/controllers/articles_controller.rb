class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit udpate destroy]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    @task = Article.create(article_params)

    redirect_to(articles_path)
  end

  def edit; end

  def update
    @task.update(articles_params)
  end

  def destroy
    @task.destroy

    redirect_to(articles_path, status: :see_other)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  protected

  def set_article
    @article = Article.find(params[:id])
  end
end
