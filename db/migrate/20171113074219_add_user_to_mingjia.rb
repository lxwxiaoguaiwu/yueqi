class AddUserToMingjia < ActiveRecord::Migration[5.1]
  def change
    add_reference :mingjia, :user, foreign_key: true
  end
end
