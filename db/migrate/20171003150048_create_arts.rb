class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :name

      t.timestamps
    end
  end
end
