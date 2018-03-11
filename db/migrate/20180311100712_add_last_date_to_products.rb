class AddLastDateToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :last_date, :date
  end
end
