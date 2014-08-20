class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :code
      t.integer :author_id
      t.integer :order_id

      t.timestamps
    end
  end
end
