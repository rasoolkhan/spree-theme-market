class RenameColumns < ActiveRecord::Migration
  def change
    rename_column :attachments, :filename, :file_name
    rename_column :attachments, :itemid, :item_id
  end
end
