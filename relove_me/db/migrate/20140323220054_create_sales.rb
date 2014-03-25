class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
    	t.time :start_time
    	t.time :finish_time
    	t.date :date
    	t.string :location
    	t.integer :price_range
    	t.timestamps
    end
  end
end



