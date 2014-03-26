class RemoveStreetNumberFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :street_number, :integer
    remove_column :users, :street_name, :string
    remove_column :users, :suburb, :string
    remove_column :users, :state, :string
    remove_column :users, :phone_number, :integer
    remove_column :users, :post_code, :integer
  end
end
