class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.integer :buyer_id
      t.string :status

      t.timestamps
    end
  end
end
