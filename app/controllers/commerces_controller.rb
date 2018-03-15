class CommercesController < ApplicationController
	
	def index
		@commerces = Commerce.all
	end

	def show
		@commerce = Commerce.friendly.find(params[:id])
		@products = @commerce.products
		@reviews = Review.where(commerce_id: @commerce.id).order("created_at DESC")
		@review = Review.new
		@commerces = Commerce.all

		if @reviews.blank?
			@avg_review = 0
		else 
			@avg_review = @reviews.average(:rating).round(2)
		end 
	end
end
