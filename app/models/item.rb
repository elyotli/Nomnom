class Item < ActiveRecord::Base
	belongs_to :business

	has_many :sub_groups, class_name: "Item", foreign_key: "parent_id"
    belongs_to :parent, class_name: "Item", foreign_key: "parent_id"
end
