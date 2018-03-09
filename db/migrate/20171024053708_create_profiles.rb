class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :followers_count, default: 0
      t.integer :following_count, default: 0
      t.integer :star_content_builders_count, default: 0
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
