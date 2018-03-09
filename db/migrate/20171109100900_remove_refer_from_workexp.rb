class RemoveReferFromWorkexp < ActiveRecord::Migration[5.1]
  def change
    remove_reference :workexps, :student, foreign_key: true
  end
end
