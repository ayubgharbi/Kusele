module ApplicationHelper
	def resource_name
		:user && :commerce
	end

	def resource
		@resource ||= User.new && Commerce.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end
end
