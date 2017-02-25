class CreateLargeMiddles < ActiveRecord::Migration[5.0]
  def change
    create_table :large_middles do |t|
      t.references :large_category 
      t.references :middle_category
      t.timestamps
    end
  end
end
