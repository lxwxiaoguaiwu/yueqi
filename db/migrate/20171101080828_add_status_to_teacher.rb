class AddStatusToTeacher < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :shenhe, :string
    add_column :teachers, :state, :string
  end
end
