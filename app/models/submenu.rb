class Submenu < ActiveRecord::Base
	belongs_to :menu
	has_many :items
end
