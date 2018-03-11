class AddCommerceToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :commerce, foreign_key: true
  end
end
