class AddLatitudeToCommerces < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :latitude, :float
  end
end
