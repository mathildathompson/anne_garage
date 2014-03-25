class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
     	t.string :last_name
    	t.string :email_address
      t.integer :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
    	t.integer :post_code
    	t.integer :phone_number
    	t.timestamps
    end
  end
end
