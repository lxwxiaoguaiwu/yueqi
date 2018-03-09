class AddAttachmentAssetToContentBuilders < ActiveRecord::Migration[5.1]
  def self.up
    change_table :content_builders do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :content_builders, :asset
  end
end
