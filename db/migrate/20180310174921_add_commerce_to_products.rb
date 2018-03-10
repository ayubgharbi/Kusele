class AddCommerceToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :commerce, foreign_key: true
  end
end
