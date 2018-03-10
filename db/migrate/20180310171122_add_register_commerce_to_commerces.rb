class AddRegisterCommerceToCommerces < ActiveRecord::Migration[5.1]
  def change
    add_column :commerces, :register_commerce, :string
  end
end
