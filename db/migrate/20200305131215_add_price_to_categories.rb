class AddPriceToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :price, :string
  end
end
