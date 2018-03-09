class RemoveCidFromStudent < ActiveRecord::Migration[5.1]
  def change
    remove_reference :students, :stucers, foreign_key: true
  end
end
