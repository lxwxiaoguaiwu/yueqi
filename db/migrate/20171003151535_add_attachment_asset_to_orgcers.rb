class AddAttachmentAssetToOrgcers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :orgcers do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :orgcers, :asset
  end
end
