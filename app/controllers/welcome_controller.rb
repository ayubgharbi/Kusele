class WelcomeController < ApplicationController
  def index
  	@commerces = Commerce.all
  end
end
