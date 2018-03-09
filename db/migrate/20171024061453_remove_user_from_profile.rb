class RemoveUserFromProfile < ActiveRecord::Migration[5.1]
  def change
    remove_reference :profiles, :users, foreign_key: true
  end
end
