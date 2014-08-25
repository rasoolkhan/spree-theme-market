class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_number, unique: true, null: false
      t.integer :buyer_id
      t.string :status

      t.timestamps
    end
  end
end
