class AddPtypeToPimage < ActiveRecord::Migration[5.1]
  def change
    add_column :pimages, :ptype, :string
  end
end
