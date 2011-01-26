class ShippingType < ActiveRecord::Base
    has_many :orders
    belongs_to :shipping_unit, :foreign_key => 'shipping_units_id'
end
