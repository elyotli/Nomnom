class CreateItemPermutations < ActiveRecord::Migration
  def change
    create_table :item_permutations do |t|
    	t.belongs_to :item
    	t.string	 :options
    	t.belongs_to :item_detail

    end
  end
end
