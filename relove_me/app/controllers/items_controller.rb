class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    item = Item.create(params[:item])
    redirect_to item
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find params[:id]
  end

  def show
    @item = Item.find params[:id]
  end

  def update
    item = Item.find params[:id]
    item.update_attributes params[:item]
    redirect_to item
  end

  def destroy
    item = Item.find params[:id]
    item.destroy
    redirect_to items_path
  end
end