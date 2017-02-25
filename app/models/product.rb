# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  cost           :integer
#  buy_count      :integer
#  quarter        :integer
#  year           :datetime
#  favorite_count :integer
#  review_average :float(24)
#  state          :integer
#  consumer_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_products_on_consumer_id  (consumer_id)
#

class Product < ApplicationRecord
end
