class ProductsController < ApplicationController
  before_action :authenticate_commerce!, only: [:edit, :update, :destroy]
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
  end 

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to current_commerce }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to current_commerce }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to current_commerce }
    end
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def set_commerce 
      @commerce = Commerce.find(params[:commerce_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :real_price, :last_date, :quantity, :ilimit, :image).merge(commerce_id: current_commerce.id)
    end
end
