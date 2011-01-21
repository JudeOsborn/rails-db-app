class Company < ActiveRecord::Base
  has_many :orders
end
