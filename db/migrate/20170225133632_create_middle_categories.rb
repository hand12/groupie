class CreateMiddleCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :middle_categories do |t|
      t.string     :name
      t.references :large_category
    end
  end
end
