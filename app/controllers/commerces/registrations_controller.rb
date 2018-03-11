# frozen_string_literal: true

class Commerces::RegistrationsController < Devise::RegistrationsController

  def show
    @commerce = Commerce.find(params[:commerce_id])
  end

  def update
  @commerce = Commerce.find(current_commerce.id)
    respond_to do |format|
      if @commerce.update(commerce_params)
        format.html { redirect_to root_url }
        format.json { render :show, status: :ok, location: @commerce }
      else
        format.html { render :edit }
        format.json { render json: @commerce.errors, status: :unprocessable_entity }
      end
    end
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
 


  private
    def sign_up_params
      params.require(:commerce).permit(:first_name, :last_name, :commerce_name, :email, :password, :password_confirmation, :address, :phone_number, :latitude, :longitude, :register_commerce, :logo, :image, :slug)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commerce_params
      params.require(:commerce).permit(:first_name, :last_name, :commerce_name, :email, :password, :password_confirmation, :address, :phone_number, :latitude, :longitude, :register_commerce, :logo, :image, :slug)
    end
end
