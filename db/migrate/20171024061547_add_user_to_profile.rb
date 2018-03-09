class AddUserToProfile < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :user, index: { unique: true }, foreign_key: true
  end
end
