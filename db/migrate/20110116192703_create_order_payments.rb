class CreateOrderPayments < ActiveRecord::Migration
  def self.up
    create_table :order_payments do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :order_payments
  end
end
