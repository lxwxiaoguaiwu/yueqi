class AddUserToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :user, index: { unique: true }, foreign_key: true
  end
end
