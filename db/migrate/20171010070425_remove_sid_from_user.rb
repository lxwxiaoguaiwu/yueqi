class RemoveSidFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :student, foreign_key: true
  end
end
