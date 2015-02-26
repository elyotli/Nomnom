class CreateSubmenus < ActiveRecord::Migration
	def change
	    create_table :submenus do |t|
	    	t.belongs_to :menu
	    	t.text	:name
	    	t.text	:description

	    	t.timestamps
	    end
	end
end
