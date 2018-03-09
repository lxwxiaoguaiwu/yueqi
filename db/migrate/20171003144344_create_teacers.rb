class CreateTeacers < ActiveRecord::Migration[5.1]
  def change
    create_table :teacers do |t|
      t.boolean :ems
      t.references :teacher,index: { unique: true },  foreign_key: true

      t.timestamps
    end
  end
end
