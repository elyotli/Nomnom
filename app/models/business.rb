class Business < ActiveRecord::Base
	has_many :items
	has_secure_password

	def ordered_items
		#top tier categories
		menu_items = Item.all.select do |item|
		 	(item.business == self) && (item.parent == nil)
		end.sort_by{|i| i.id}
		menu_items.map do |item|
			item.populate_tree
		end
	end

	private
	
end
