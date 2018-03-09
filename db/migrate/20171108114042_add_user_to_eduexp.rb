class AddUserToEduexp < ActiveRecord::Migration[5.1]
  def change
    add_reference :eduexps, :user, foreign_key: true
  end
end
