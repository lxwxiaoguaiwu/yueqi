class CreateZhuces < ActiveRecord::Migration[5.1]
  def change
    create_table :zhuces do |t|
      t.string :title

      t.timestamps
    end
  end
end
