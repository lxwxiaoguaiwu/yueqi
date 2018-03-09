class AddLeibieToPimage < ActiveRecord::Migration[5.1]
  def change
    add_column :pimages, :leibie, :string
  end
end
