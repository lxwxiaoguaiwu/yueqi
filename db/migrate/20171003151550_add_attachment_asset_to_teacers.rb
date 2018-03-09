class AddAttachmentAssetToTeacers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :teacers do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :teacers, :asset
  end
end
