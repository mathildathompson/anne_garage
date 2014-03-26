class AddAddressToSales < ActiveRecord::Migration
  def change
  	add_column :sales, :street_number, :integer
  	add_column :sales, :street_name, :string
  	add_column :sales, :suburb, :string
  	add_column :sales, :state, :string
  	add_column :sales, :post_code, :integer
  	add_column :sales, :phone_number, :integer
    add_column :sales, :address, :string
    add_column :sales, :latitude, :float
    add_column :sales, :longtitude, :float
  end
end
