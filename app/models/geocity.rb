class Geocity < ActiveRecord::Base
	self.table_name = 'reference_geo_cities'
	belongs_to :geostates
	has_many :geodistricts
	
	validates :short, :name, presence: true
end
