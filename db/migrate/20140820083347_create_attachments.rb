class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :filename
      t.integer :itemid
      t.string :version

      t.timestamps
    end
  end
end
