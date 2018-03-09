class CreateOrgcers < ActiveRecord::Migration[5.1]
  def change
    create_table :orgcers do |t|
      t.boolean :ems
      t.references :orgnization,index: { unique: true },  foreign_key: true

      t.timestamps
    end
  end
end
