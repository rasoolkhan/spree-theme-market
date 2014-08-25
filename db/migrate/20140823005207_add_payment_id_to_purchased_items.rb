class AddPaymentIdToPurchasedItems < ActiveRecord::Migration
  def change
    add_column :purchased_items, :payment_id, :integer
  end
end
