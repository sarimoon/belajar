class Grade < ActiveRecord::Base
	self.table_name = 'reference_grades'
	
	validates :grade, presence: true
end
