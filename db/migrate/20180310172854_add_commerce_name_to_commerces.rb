class AddCommerceNameToCommerces < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :commerce_name, :string
  end
end
