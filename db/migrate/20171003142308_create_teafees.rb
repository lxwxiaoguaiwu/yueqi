class CreateTeafees < ActiveRecord::Migration[5.1]
  def change
    create_table :teafees do |t|
      t.float :amount
      t.string :fsource
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
