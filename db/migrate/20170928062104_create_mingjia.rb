class CreateMingjia < ActiveRecord::Migration[5.1]
  def change
    create_table :mingjia do |t|
      t.string :title

      t.timestamps
    end
  end
end
