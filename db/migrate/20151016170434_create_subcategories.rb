class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :subcategory_name
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
