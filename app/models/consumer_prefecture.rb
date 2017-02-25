# == Schema Information
#
# Table name: consumer_prefectures
#
#  id            :integer          not null, primary key
#  consumer_id   :integer
#  prefecture_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_consumer_prefectures_on_consumer_id    (consumer_id)
#  index_consumer_prefectures_on_prefecture_id  (prefecture_id)
#

class ConsumerPrefecture < ApplicationRecord
end
