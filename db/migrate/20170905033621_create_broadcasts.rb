class CreateBroadcasts < ActiveRecord::Migration[5.1]
  def change
    create_table :broadcasts do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
