class AddUsersToProfile < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :users, index: { unique: true }, foreign_key: true
  end
end
