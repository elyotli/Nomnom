class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
    	t.belongs_to :business, null: false
    	t.belongs_to :user, null: false
    	t.string :status
      	t.timestamps
    end
  end
end
