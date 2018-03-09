class AddAttachmentAssetToPimages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :pimages do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :pimages, :asset
  end
end
