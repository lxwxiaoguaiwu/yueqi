class AddAttachmentAssetToVideos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :videos do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :videos, :asset
  end
end
