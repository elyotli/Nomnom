class Menu < ActiveRecord::Base
	belongs_to :business
	has_many :submenus
end
