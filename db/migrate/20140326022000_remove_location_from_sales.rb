class RemoveLocationFromSales < ActiveRecord::Migration
  def change
    remove_column :sales, :location, :string
  end
end
