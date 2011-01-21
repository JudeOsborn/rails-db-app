class ShippingUnit < ActiveRecord::Base
  has_many shipping_types
end
