# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  cost               :integer
#  buy_count          :integer
#  year               :integer
#  order_time         :datetime
#  favorite_count     :integer
#  review_average     :float(24)
#  state              :integer          default("cancelled")
#  middle_category_id :integer
#
# Indexes
#
#  index_products_on_middle_category_id  (middle_category_id)
#

class Product < ApplicationRecord
  has_many   :consumers
  belongs_to :tab
  belongs_to :middle_category
  enum state: { cancelled: 0, done: 1, returned: 2, now_registering: 3 }
end
