class CreateItemOptions < ActiveRecord::Migration
	def change
	    create_table :item_options do |t|
	    	t.belongs_to :item
	    	t.float		:price
	    	t.timestamps
	    end
	end
end
