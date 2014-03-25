class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def create
    sale = Sale.create(params[:sale])
    redirect_to new_item_path
  end

  def new
    @sale = Sale.new
  end

  def edit
    @sale = Sale.find params[:id]
  end

  def show
    @sale = Sale.find params[:id]
  end

  def search
    @sales = Sale.all
  end

  def update
    sale = Sale.find params[:id]
    sale.update_attributes params[:sale]
    redirect_to sale
  end

  def destroy
    sale = Sale.find params[:id]
    sale.destroy
    redirect_to sales_new_path
  end
end