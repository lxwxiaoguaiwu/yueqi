class CreateOrgnizations < ActiveRecord::Migration[5.1]
  def change
    create_table :orgnizations do |t|
      t.string :name
      t.references :user, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
