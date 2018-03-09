class AddRefsToMingjia < ActiveRecord::Migration[5.1]
  def change
    add_reference :mingjia, :art, foreign_key: true
    add_reference :mingjia, :college, foreign_key: true
    add_reference :mingjia, :province, foreign_key: true
    add_reference :mingjia, :institute, foreign_key: true
  end
end
