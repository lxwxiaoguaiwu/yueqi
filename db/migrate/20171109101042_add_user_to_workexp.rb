class AddUserToWorkexp < ActiveRecord::Migration[5.1]
  def change
    add_reference :workexps, :user, foreign_key: true
  end
end
