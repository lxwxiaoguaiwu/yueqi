class AddCountToContentBuilder < ActiveRecord::Migration[5.1]
  def change
    add_column :content_builders, :likes_count, :integer, default: 0
    add_column :content_builders, :stars_count, :integer, default: 0
  end
end
