class AddAttachmentLogoToCommerces < ActiveRecord::Migration[5.1]
  def self.up
    change_table :commerces do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :commerces, :logo
  end
end
