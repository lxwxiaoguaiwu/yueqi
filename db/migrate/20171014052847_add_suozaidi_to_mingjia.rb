class AddSuozaidiToMingjia < ActiveRecord::Migration[5.1]
  def change
    add_column :mingjia, :suozaidi, :string
  end
end
