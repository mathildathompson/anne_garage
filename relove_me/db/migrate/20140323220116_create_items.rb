class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :title
    	t.string :condition
    	t.text :description
    	t.text :image
    	t.integer :price_range
    	t.timestamps
    end
  end
end



	