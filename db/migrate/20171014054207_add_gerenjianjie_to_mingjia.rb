class AddGerenjianjieToMingjia < ActiveRecord::Migration[5.1]
  def change
    add_column :mingjia, :gerenjianjie, :text
  end
end
