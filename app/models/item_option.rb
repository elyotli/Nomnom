class ItemOption < ActiveRecord::Base
	belongs_to :item
	has_many :item_details
end
