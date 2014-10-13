class Carrera < ActiveRecord::Base
	def to_param
		url.downcase	
	end
end
