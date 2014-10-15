class Carrera < ActiveRecord::Base
	has_and_belongs_to_many :unidades
	def to_param
		url.downcase	
	end
end
