class CreateNotables < ActiveRecord::Migration[5.1]
  def change
    create_table :notables do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
