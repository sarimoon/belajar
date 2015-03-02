class Religion < ActiveRecord::Base
	self.table_name = 'reference_religions'
	
	validates :name, presence: true
end
