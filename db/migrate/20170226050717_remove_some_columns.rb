class RemoveSomeColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :item_id, :integer
  end
end
