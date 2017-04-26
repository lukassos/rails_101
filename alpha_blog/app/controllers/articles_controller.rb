class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]  
 
  def index
    @article_list = Article.all
  end

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was succesfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
    #render plain: params[:article].inspect
    #@article = Article.new(article_params)
    #@article.save
    #redirect_to articles_path@article)
  end
  
  def edit
    #@article = Article.find(params[:id])
  end

  def update
    #@article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article was succesfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def show
    #@article = Article.find(params[:id]) 
  end

  def destroy
    #@article = Article.find(params[:id])
    @article.destroy
    flash[:danger] = "Article was succesfully destroyed"
    redirect_to articles_path
  end

  private 
    def article_params
      params.require(:article).permit(:title,:description)
    end
    def set_article
      @article = Article.find(params[:id])
    end
end
