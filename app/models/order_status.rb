class OrderStatus < ActiveRecord::Base
    set_table_name 'order_status'
    has_many :orders
end
