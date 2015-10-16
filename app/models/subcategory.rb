class Subcategory < ActiveRecord::Base
belongs_to :category
 has_many :products
 validates :subcategory_name, presence: true, length: { maximum: 30 }
end
