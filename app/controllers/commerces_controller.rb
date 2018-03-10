class CommercesController < ApplicationController
	
	def index
		@commerces = Commerce.all
	end
	def show
		@commerce = Commerce.find(params[:id])
		@products = @commerce.products
	end
end
