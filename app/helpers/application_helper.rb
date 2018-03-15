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

	def full_title(page_title= '')
		base_title= "Kusele"
		if page_title.empty?
			base_title
		else
			base_title + " | " + page_title
		end
	end
end
