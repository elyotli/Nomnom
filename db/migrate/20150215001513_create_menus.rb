class CreateMenus < ActiveRecord::Migration
  	def change
    	create_table :menus do |t|
	    	t.belongs_to 	:business
	    	t.text 			:name
	    	t.text 			:description
	    end
  	end
end
