class AddTypeToContentBuilder < ActiveRecord::Migration[5.1]
  def change
    add_column :content_builders, :type, :string
  end
end
