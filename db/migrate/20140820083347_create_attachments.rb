class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :filename
      t.integer :item_id
      t.string :version

      t.timestamps
    end
  end
end
