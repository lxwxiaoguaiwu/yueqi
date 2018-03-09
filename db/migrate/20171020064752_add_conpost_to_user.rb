class AddConpostToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :star_content_builders_count, :integer, default: 0
  end
end
