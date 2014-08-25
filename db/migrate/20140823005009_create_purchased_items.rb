class CreatePurchasedItems < ActiveRecord::Migration
  def change
    create_table :purchased_items do |t|
      t.integer :item_id
      t.integer :buyer_id
      t.datetime :purchased_at
      t.decimal :cost

      t.timestamps
    end
  end
end
