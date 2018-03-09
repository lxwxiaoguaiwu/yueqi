class AddAttachmentAssetToNotables < ActiveRecord::Migration[4.2]


  def self.up
    change_table :notables do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :notables, :asset
  end
end
