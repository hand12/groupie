# == Schema Information
#
# Table name: consumers
#
#  id            :integer          not null, primary key
#  gender        :integer          default("unknown")
#  age           :integer
#  product_id    :integer
#  prefecture_id :integer
#
# Indexes
#
#  index_consumers_on_prefecture_id  (prefecture_id)
#  index_consumers_on_product_id     (product_id)
#

class Consumer < ApplicationRecord
  belongs_to :prefecture
  belongs_to :product
  enum gender: { unknown: 0, man: 1, woman: 2 }
end
