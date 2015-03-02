class Geodistrict < ActiveRecord::Base
	self.table_name = 'reference_geo_districts'
	belongs_to :geocities
	
	validates :short, :name, presence: true
end
