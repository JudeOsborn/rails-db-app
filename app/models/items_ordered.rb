class ItemsOrdered < ActiveRecord::Base
  set_table_name 'items_ordered'
  belongs_to :order, :foreign_key=>'orders_id'
  belongs_to :item, :foreign_key=>'items_id'
  
  def final_cost
    if manual_cost.blank?
      cost
    else
      manual_cost
    end
  end

  def total_cost
    final_cost * quantity
  end  
end
