class Product < ApplicationRecord
	def full_description
		"#{self.title} #{self.subtitle}"
	end

	def price_in_cents
		(self.price * 100).to_i
	end

	def thumbnail_image_name
		"product-#{image_name}.png"
	end

	def header_image_name
		"header-#{image_name}.png"
	end

	def image_name
		title.split.slice(0..-2).join(" ").gsub(" ","-").downcase
	end
end
