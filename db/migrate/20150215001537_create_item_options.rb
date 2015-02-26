class CreateItemOptions < ActiveRecord::Migration
	def change
	    create_table :item_options do |t|
	    	t.belongs_to :item
	    	t.string	:name
	    	t.text		:description
	    	t.integer	:display_type
	    	t.timestamps
	    end
	end
end
