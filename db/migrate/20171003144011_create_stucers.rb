class CreateStucers < ActiveRecord::Migration[5.1]
  def change
    create_table :stucers do |t|
      t.boolean :ems

      t.timestamps
    end
  end
end
