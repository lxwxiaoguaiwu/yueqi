class AddAttachmentAssetToMingjia < ActiveRecord::Migration[5.1]
  def self.up
    change_table :mingjia do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :mingjia, :asset
  end
end
