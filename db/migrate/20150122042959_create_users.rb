class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
    	t.date :dob
    	t.string :phone, null: false
    	t.timestamps
    end
  end
end
