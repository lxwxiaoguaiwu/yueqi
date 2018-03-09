class AddDistinctToWorkexp < ActiveRecord::Migration[5.1]
  def change
    add_column :workexps, :distinct, :string
    add_column :workexps, :duty, :string
  end
end
