class CreatePrefectures < ActiveRecord::Migration[5.0]
  def change
    create_table :prefectures do |t|
      t.string  :name
      t.integer :area, default: 0
    end
  end
end
