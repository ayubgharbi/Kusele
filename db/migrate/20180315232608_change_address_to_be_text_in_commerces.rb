class ChangeAddressToBeTextInCommerces < ActiveRecord::Migration[5.1]
  def change
  	change_column :commerces, :address, :text
  end
end
