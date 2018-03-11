class WelcomeController < ApplicationController
  def index
  	@commerces = Commerce.all
  	@products = Product.last(4)
  end
end
