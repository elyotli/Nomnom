class CreateOrders < ActiveRecord::Migration
  	def change
    	create_table :orders do |t|
    		t.belongs_to :visit
    		t.belongs_to :item
    		t.hstore	:order_details

      		t.timestamps
    	end
  	end
end
