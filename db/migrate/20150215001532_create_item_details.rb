class CreateItemDetails < ActiveRecord::Migration
  	def change
    	create_table :item_details do |t|
    		t.belongs_to :item_option
    		t.text :name
    		t.float	:price
    	end
  	end
end
