class AddAttachmentAttachmentToItems < ActiveRecord::Migration
  def up
    change_table :items do |t|
      t.attachment :attachment
    end
  end

  def down
    remove_attachment :items, :attachment
  end
end
