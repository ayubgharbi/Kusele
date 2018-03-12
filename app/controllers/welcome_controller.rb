class WelcomeController < ApplicationController
  def index
  	@commerces = Commerce.all.order("created_at DESC")
  	@products = Product.all.order("created_at DESC")
  end
end
