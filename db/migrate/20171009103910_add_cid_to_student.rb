class AddCidToStudent < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :stucers, foreign_key: true
  end
end
