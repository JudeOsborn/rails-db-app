class Subcategory < ActiveRecord::Base
    has_many :items
    belongs_to :category, :foreign_key => 'subcategories_id'
end
