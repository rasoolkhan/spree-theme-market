class AddColumnToItem < ActiveRecord::Migration
  def change
    add_column :items, :image_preview, :string
  end
end