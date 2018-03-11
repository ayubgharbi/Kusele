class AddRealPriceToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :real_price, :decimal
  end
end
