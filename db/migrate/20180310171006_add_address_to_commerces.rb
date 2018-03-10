class AddAddressToCommerces < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :address, :string
  end
end
