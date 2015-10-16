class Category < ActiveRecord::Base
has_many :subcategories
 has_many :products
 validates :category_name, presence: true, length: { maximum: 30 }
end
