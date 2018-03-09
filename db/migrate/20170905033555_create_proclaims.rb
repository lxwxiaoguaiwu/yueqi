class CreateProclaims < ActiveRecord::Migration[5.1]
  def change
    create_table :proclaims do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
