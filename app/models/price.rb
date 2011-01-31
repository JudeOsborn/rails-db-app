class Price < ActiveRecord::Base
    belongs_to :item, :foreign_key => 'items_id'
    belongs_to :currency, :foreign_key => 'currencies_id'
end