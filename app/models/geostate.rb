class Geostate < ActiveRecord::Base
	self.table_name = 'reference_geo_states'
	belongs_to :geocountries
	has_many :geocities
	
	validates :short, :name, presence: true
end
