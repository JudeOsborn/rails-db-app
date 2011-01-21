class CreateProductInfos < ActiveRecord::Migration
  def self.up
    create_table :product_infos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :product_infos
  end
end
