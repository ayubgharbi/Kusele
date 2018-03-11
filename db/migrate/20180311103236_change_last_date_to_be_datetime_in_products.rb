class ChangeLastDateToBeDatetimeInProducts < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :last_date, :datetime
  end
end
