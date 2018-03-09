class AddFolcouToContentBuilder < ActiveRecord::Migration[5.1]
  def change
    add_column :content_builders, :following_count, :integer, default: 0
  end
end
