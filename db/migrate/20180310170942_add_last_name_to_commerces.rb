class AddLastNameToCommerces < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :last_name, :string
  end
end
