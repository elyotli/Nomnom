class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.belongs_to :visit
    	t.belongs_to :item
    	t.text :special_request

      	t.timestamps
    end
  end
end
