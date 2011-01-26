class ProductInfo < ActiveRecord::Base
  set_table_name 'product_info'
  belongs_to :item, :foreign_key => 'items_id'
  
  def final_stock
    stock + estimated_stock
  end
end
