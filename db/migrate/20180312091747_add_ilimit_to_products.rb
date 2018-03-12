class AddIlimitToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :ilimit, :boolean, default: false
  end
end
