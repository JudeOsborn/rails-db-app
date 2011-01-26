class Item < ActiveRecord::Base
  has_many :items_ordereds
  has_many :product_info, :foreign_key => 'items_id'
  has_many :items_print_jobs
  belongs_to :author, :foreign_key => 'authors_id'
  belongs_to :subcategory, :foreign_key => 'subcategories_id'
  belongs_to :format, :foreign_key => 'formats_id'
  belongs_to :language, :foreign_key => 'languages_id'

  named_scope :aurora, :conditions => { :companies_id => 7 }, :order => 'product_code desc'
  
  def info
    product_info.find(:first, :conditions => ['items_id = ? and companies_id = 7', id.to_s])
  end
  
  def final_title
    if ll_title.blank?
      title
    else
      title + ' (' + ll_title + ')'
    end
  end
  
  def final_weight
    if info.weight_override > 0
      info.weight_override
    else
      weight
    end
  end
  
  def full_category
    output = ''
    if subcategory.present?
      output = subcategory.subcategory
      if subcategory.category.present?
        output = subcategory.category.category + '->' + output
      end
    end

    output
  end
end
