class AddSourceToPvideo < ActiveRecord::Migration[5.1]
  def change
    add_column :pvideos, :source, :string
  end
end
