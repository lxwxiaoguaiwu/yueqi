class AddRacebToContentBuilder < ActiveRecord::Migration[5.1]
  def change
    add_column :content_builders, :raceb, :string
    add_column :content_builders, :racec, :string
    add_column :content_builders, :raced, :string
  end
end
