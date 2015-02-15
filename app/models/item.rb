class Item < ActiveRecord::Base
	belongs_to :business

	has_many :sub_groups, class_name: "Item", foreign_key: "parent_id"
    belongs_to :parent, class_name: "Item", foreign_key: "parent_id"

    def populate_tree
		if self.sub_groups #if we are not at the end
			return {self => self.sub_groups.map{|item| item.populate_tree}}
		else
			return self
		end
	end

	def has_price?
		self.price
	end
end
