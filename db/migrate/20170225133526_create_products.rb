class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer    :cost
      t.integer    :buy_count
      t.integer    :quarter
      t.datetime   :year
      t.integer    :favorite_count
      t.float      :review_average
      t.integer    :state
      t.references :consumer
      t.timestamps
    end
  end
end
