class CreateDetails < ActiveRecord::Migration
  	def change
    	create_table :details do |t|
    		t.text :name
    		t.belongs_to :item_option
    	end
  	end
end
