class AddStatusToOrgnization < ActiveRecord::Migration[5.1]
  def change
    add_column :orgnizations, :shenhe, :string
    add_column :orgnizations, :state, :string
  end
end
