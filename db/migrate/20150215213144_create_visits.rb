class CreateVisits < ActiveRecord::Migration
  	def change
    	create_table :visits do |t|
	    	t.belongs_to :user
	    	t.belongs_to :business
	    	t.float		:total
	    	t.hstore	:order_details
	    	t.timestamps
	    end
  	end
end
