class CreateUsers < ActiveRecord::Migration
  	def change
    	create_table :users do |t|
    		t.string :first_name, null: false
    		t.string :last_name
    		t.date	 :DOB
    		t.string :phone, null: false
    		t.timestamps
    	end
  	end
end
