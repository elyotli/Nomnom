class Item < ActiveRecord::Base
	belongs_to :submenu
	has_many :item_options

end
