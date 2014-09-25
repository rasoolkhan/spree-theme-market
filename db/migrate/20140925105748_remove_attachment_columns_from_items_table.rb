class RemoveAttachmentColumnsFromItemsTable < ActiveRecord::Migration
  def change
    remove_column :items, :attachment_file_name, :string
    remove_column :items, :attachment_content_type, :string
    remove_column :items, :attachment_file_size, :integer
    remove_column :items, :attachment_updated_at, :datetime
  end
end
