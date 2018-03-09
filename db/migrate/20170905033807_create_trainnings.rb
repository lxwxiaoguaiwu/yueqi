class CreateTrainnings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainnings do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
