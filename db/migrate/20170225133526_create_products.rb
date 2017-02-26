class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer    :cost
      t.integer    :buy_count
      t.integer    :year
      t.datetime   :order_time
      t.integer    :favorite_count
      t.float      :review_average
      t.integer    :state, default: 0
      t.references :consumer
      t.references :middle_category
    end
  end
end
