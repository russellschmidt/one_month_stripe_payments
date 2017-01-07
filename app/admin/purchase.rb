ActiveAdmin.register Purchase do

# because we overloaded the to_param for our UUIDs we have to do that here
before_filter do
	Purchase.class_eval do
		def to_param
			id.to_s
		end
	end
end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
