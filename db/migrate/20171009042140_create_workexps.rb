class CreateWorkexps < ActiveRecord::Migration[5.1]
  def change
    create_table :workexps do |t|
      t.string :name
      t.string :sedate
      t.string :content
      t.references :student, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
