class TextController < ApplicationController
  def index
    @text=Text.all

  end

  def add
    @text=Text.new
  end

  def create
    @text=Text.new
    @text.title=params[:title]
    @text.content=params[:content]
    @text.user_id=params[:text][:user_id]
    @text.save
    if @text.save
    redirect_to index_path,notice:'投稿が完了しました！'
  else
    render:add
  end
  end

  def detail
    @text=Text.find(params[:id])
  end

  def edit
    @text=Text.find(params[:id])
  end

  def update
    @text=Text.find(params[:id])
    @text.title=params[:title]
    @text.content=params[:content]
    @text.save
    redirect_to detail_path(params[:id]),notice:'編集完了しました！'
  end

  def delete
    @text=Text.find(params[:id])
    @text.destroy
    redirect_to index_path
  end
end
