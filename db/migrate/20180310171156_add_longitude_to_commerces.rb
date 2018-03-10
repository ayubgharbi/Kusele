class AddLongitudeToCommerces < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :longitude, :float
  end
end
