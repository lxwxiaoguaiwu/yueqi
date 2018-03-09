class CreateOrgfees < ActiveRecord::Migration[5.1]
  def change
    create_table :orgfees do |t|
      t.float :amount
      t.string :fsource
      t.references :orgnization, foreign_key: true

      t.timestamps
    end
  end
end
