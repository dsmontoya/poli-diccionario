class Unidad < ActiveRecord::Base
	def to_param
		siglas.downcase	
	end
end
