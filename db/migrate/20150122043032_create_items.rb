class CreateItems < ActiveRecord::Migration
  	def change
    	create_table :items do |t|
	      	t.belongs_to   :submenu
	    	t.string       :name, null: false
	    	t.text         :description
	    	t.string       :image_path
	    	t.float			:price
	      	t.timestamps
    	end
  	end
end
