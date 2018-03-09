class AddZigezhengshuToMingjia < ActiveRecord::Migration[5.1]
  def change
    add_column :mingjia, :zigezhengshu, :string
  end
end
