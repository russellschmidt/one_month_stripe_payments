class Purchase < ApplicationRecord
	def to_param
		# overriding the default to_param method that returns the :id field
		uuid
	end
end
