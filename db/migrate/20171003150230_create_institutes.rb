class CreateInstitutes < ActiveRecord::Migration[5.1]
  def change
    create_table :institutes do |t|
      t.string :name

      t.timestamps
    end
  end
end
