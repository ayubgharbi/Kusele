class AddAttachmentImageToCommerces < ActiveRecord::Migration[5.1]
  def self.up
    change_table :commerces do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :commerces, :image
  end
end
