class Unidad < ActiveRecord::Base
	has_and_belongs_to_many :carreras
	def to_param
		siglas.downcase	
	end
end
