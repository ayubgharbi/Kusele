class AddFirstNameToCommerces < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :first_name, :string
  end
end
