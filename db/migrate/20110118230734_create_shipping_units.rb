class CreateShippingUnits < ActiveRecord::Migration
  def self.up
    create_table :shipping_units do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :shipping_units
  end
end
