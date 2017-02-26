class CreateLargeCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :large_categories do |t|
      t.string :name
    end
  end
end
