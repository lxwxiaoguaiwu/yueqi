class CreateStufees < ActiveRecord::Migration[5.1]
  def change
    create_table :stufees do |t|
      t.float :amount
      t.string :fsource
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
