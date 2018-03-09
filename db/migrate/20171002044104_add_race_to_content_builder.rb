class AddRaceToContentBuilder < ActiveRecord::Migration[5.1]
  def change
    add_column :content_builders, :race, :string
  end
end
