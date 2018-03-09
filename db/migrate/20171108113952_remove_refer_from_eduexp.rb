class RemoveReferFromEduexp < ActiveRecord::Migration[5.1]
  def change
    remove_reference :eduexps, :student, foreign_key: true
    remove_reference :eduexps, :teacher, foreign_key: true

  end
end
