class CreateLargeTabs < ActiveRecord::Migration[5.0]
  def change
    create_table :large_tabs do |t|
      t.references :large_category
      t.references :tab
      t.timestamps
    end
  end
end
