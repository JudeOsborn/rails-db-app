class CreateItemsOrdereds < ActiveRecord::Migration
  def self.up
    create_table :items_ordereds do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :items_ordereds
  end
end
