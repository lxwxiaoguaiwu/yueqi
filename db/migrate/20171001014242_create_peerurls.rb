class CreatePeerurls < ActiveRecord::Migration[5.1]
  def change
    create_table :peerurls do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
