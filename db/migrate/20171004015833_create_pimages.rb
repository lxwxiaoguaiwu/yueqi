class CreatePimages < ActiveRecord::Migration[5.1]
  def change
    create_table :pimages do |t|
      t.string :title
      t.text :desc
      t.string :pstatus
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
