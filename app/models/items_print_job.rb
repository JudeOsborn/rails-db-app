class ItemsPrintJob < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
end
