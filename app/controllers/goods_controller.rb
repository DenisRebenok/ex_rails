class GoodsController < ApplicationController
  def index
    @goods_count = Good.count
    @goods = Good.all.order(:code)
  end
  def show
    @good = Good.find(params[:id])
  end

  def new
    @good = Good.new
  end
  def create
    @good = Good.new
    @good.code = params[:good][:code]
    @good.name = params[:good][:name]
    @good.save
    redirect_to goods_path
  end

  def edit
    @good = Good.find(params[:id])
  end
  def update
    @good = Good.find(params[:id])
    @good.code = params[:good][:code]
    @good.name = params[:good][:name]
    @good.save
    redirect_to goods_path
  end

  def destroy
    Good.find(params[:id]).destroy
    redirect_to goods_path
  end
end
