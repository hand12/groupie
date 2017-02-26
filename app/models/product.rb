# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  cost              :integer
#  buy_count         :integer
#  year              :integer
#  order_time        :datetime
#  favorite_count    :integer
#  review_average    :float(24)
#  state             :integer          default(0)
#  consumer_id       :integer
#  large_category_id :integer
#
# Indexes
#
#  index_products_on_consumer_id        (consumer_id)
#  index_products_on_large_category_id  (large_category_id)
#

class Product < ApplicationRecord
end
