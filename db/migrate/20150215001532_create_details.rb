class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
    	t.text :description
    	t.float :price
    end
  end
end
