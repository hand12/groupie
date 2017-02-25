# == Schema Information
#
# Table name: consumers
#
#  id         :integer          not null, primary key
#  gender     :integer
#  age        :integer
#  period     :integer
#  carrier    :string(255)
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_consumers_on_product_id  (product_id)
#

class Consumer < ApplicationRecord
end
