class AddSturefToStucer < ActiveRecord::Migration[5.1]
  def change
    add_reference :stucers, :student, index: { unique: true }, foreign_key: true
  end
end
