class CreateConsumers < ActiveRecord::Migration[5.0]
  def change
    create_table :consumers do |t|
      t.integer    :gender
      t.integer    :age
      t.integer    :period
      t.string     :carrier
      t.references :product
      t.timestamps
    end
  end
end
