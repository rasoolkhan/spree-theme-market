class AddAttachmentAttachmentToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :items, :attachment
  end
end
