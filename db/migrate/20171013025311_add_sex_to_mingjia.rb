class AddSexToMingjia < ActiveRecord::Migration[5.1]
  def change
    add_column :mingjia, :sex, :string
  end
end
