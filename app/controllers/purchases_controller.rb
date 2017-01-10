class PurchasesController < ApplicationController
	def show 
		@purchase = Purchase.find_by_uuid(params[:id])
		if @purchase.present?
			@product = Product.find(@purchase.product_id)
		end
	end
end