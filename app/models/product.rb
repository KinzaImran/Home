class Product < ActiveRecord::Base
belongs_to :category
belongs_to :subcategory
validates :initial_price, numericality: true
validates :product_name, presence: true, length: { maximum: 30 }
validates :selling_price, numericality: true
validates :description, presence: true, length: { maximum: 30 }

end
