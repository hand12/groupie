class CreateConsumerPrefectures < ActiveRecord::Migration[5.0]
  def change
    create_table :consumer_prefectures do |t|
      t.references :consumer
      t.references :prefecture
      t.timestamps
    end
  end
end
