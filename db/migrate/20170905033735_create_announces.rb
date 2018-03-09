class CreateAnnounces < ActiveRecord::Migration[5.1]
  def change
    create_table :announces do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
