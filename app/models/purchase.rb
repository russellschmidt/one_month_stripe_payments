class Purchase < ApplicationRecord
	after_create :email_purchaser

	def to_param
		# overriding the default to_param method that returns the :id field
		uuid
	end

	private
	def email_purchaser
		PurchaseMailer.purchase_receipt(self).deliver
	end

end
