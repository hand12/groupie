class CreateTabs < ActiveRecord::Migration[5.0]
  def change
    create_table :tabs do |t|
      t.integer :status
      t.timestamps
    end
  end
end
