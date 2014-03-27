class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    sale = Sale.create(params[:sale])
    redirect_to new_item_path
  end

  def show
    @sale = Sale.find params[:id]
  end

  def edit
    @sale = Sale.find params[:id]
  end

  def search
    @sales = Sale.all
  end

  def result 
    if params[:search].present?  
      @sales = Sale.near(params[:suburb], 50,
      :order => :distance)  
    else  
      @sales = Sale.all  
    end  
  end  

  def update
    sale = Sale.find params[:id]
    sale.update_attributes (params[:sale])
    redirect_to sale
  end

  def destroy
    sale = Sale.find params[:id]
    sale.destroy
    redirect_to sales_path
  end

end