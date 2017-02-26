class CreateConsumers < ActiveRecord::Migration[5.0]
  def change
    create_table :consumers do |t|
      t.integer    :gender, default: 0
      t.integer    :age
      t.references :product
      t.references :prefecture
    end
  end
end
