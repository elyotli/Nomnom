class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.belongs_to :business
    	t.string :name, null: false
    	t.string :size
    	t.text :description
    	t.string :image_path
    	t.float :price
      t.integer :item_level, null: false
    	t.integer :parent_id

      t.timestamps
    end
  end
end
