class Geocountry < ActiveRecord::Base
	self.table_name = 'reference_geo_countries'
	has_many :geostates
	
	validates :short, :name, presence: true
end
