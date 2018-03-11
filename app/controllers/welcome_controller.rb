class WelcomeController < ApplicationController
  def index
  	@commerces = Commerce.all
  	@products = Product.all.order("created_at DESC")
  end
end
