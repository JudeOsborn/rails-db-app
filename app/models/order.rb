class Order < ActiveRecord::Base
  belongs_to :company, :foreign_key=>'companies_id'
  belongs_to :shipping_type, :foreign_key=>'shipping_types_id'
  belongs_to :currency, :foreign_key=>'currencies_id'
  belongs_to :company, :foreign_key=>'parent_companies_id'
  belongs_to :order_status, :foreign_key=>'order_status_id'
  belongs_to :zone, :foreign_key=>'zones_id'
  has_many :items_ordered, :foreign_key=>'orders_id'
  
  named_scope :aurora, :conditions => { :parent_companies_id => 7 }, :order => 'id desc'
  
  def total_weight
    total = 0
    for item_ordered in items_ordered
      if item_ordered.item.present?
        total += item_ordered.item.final_weight
      end
    end
    
    total
  end

  def total_cartons
    total = 0
    for item_ordered in items_ordered
        total += item_ordered.cartons
    end
    
    total
  end
  
  def total_m3s
    total = 0
    for item_ordered in items_ordered
      if item_ordered.item.present?
        if item_ordered.item.info.carton_m3 > 0
            total += item_ordered.cartons / item_ordered.item.info.carton_m3
        end
      end
    end
    
    total
  end

  def final_total_item_cost
    if manual_total_item_cost.blank?
      total_item_cost
    else
      manual_total_item_cost
    end    
  end

  def final_shipping_cost
        base_shipping_cost + insurance + paletting
  end

  def grand_total
    final_total_item_cost + final_shipping_cost + discount_surcharge + surcharge_cost
  end
end