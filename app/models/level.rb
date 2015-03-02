class Section < ActiveRecord::Base
	self.table_name = 'masters_sections'
	
	validates :name, presence: true
end
