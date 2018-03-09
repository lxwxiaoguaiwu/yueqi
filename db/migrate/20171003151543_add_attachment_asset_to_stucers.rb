class AddAttachmentAssetToStucers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :stucers do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :stucers, :asset
  end
end
