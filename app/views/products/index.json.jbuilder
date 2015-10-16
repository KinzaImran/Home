json.array!(@products) do |product|
  json.extract! product, :id, :product_name, :description, :category_id, :subcategory_id, :initial_price, :selling_price, :opening_date, :closing_date
  json.url product_url(product, format: :json)
end
