class AddZhuceyuanxiaoToMingjia < ActiveRecord::Migration[5.1]
  def change
    add_column :mingjia, :zhuceyuanxiao, :string
  end
end
