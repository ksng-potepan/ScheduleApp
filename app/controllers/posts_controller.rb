class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:title], start_date: params[:start_date], end_date: params[:end_date], all_day: params[:all_day],content: params[:content])
     if @post.save
      flash[:notice] = "新規作成しました"
      redirect_to('/')
    else
      flash.now[:alert] = "新規作成に失敗しました"
      render('posts/new')
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(title: params[:title], start_date: params[:start_date], end_date: params[:end_date], all_day: params[:all_day],content: params[:content])
    if @post.save
      flash[:notice] = "更新しました"
      redirect_to('/')
    else
      flash.now[:alert] = "更新できませんでした"
      render('posts/edit')
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to('/')
  end
end
