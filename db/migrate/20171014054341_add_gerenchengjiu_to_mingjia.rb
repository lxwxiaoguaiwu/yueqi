class AddGerenchengjiuToMingjia < ActiveRecord::Migration[5.1]
  def change
    add_column :mingjia, :gerenchengjiu, :text
  end
end
