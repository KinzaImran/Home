class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :description
      t.integer :category_id
      t.integer :subcategory_id
      t.integer :initial_price
      t.integer :selling_price
      t.timestamp :opening_date
      t.timestamp :closing_date

      t.timestamps null: false
    end
  end
end
