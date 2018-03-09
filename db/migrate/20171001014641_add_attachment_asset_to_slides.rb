class AddAttachmentAssetToSlides < ActiveRecord::Migration[5.1]
  def self.up
    change_table :slides do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :slides, :asset
  end
end
