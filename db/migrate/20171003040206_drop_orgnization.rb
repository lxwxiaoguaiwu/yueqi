class DropOrgnization < ActiveRecord::Migration[5.1]
  def up
    drop_table :orgnizations
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
