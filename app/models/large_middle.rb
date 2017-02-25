# == Schema Information
#
# Table name: large_middles
#
#  id                 :integer          not null, primary key
#  large_category_id  :integer
#  middle_category_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_large_middles_on_large_category_id   (large_category_id)
#  index_large_middles_on_middle_category_id  (middle_category_id)
#

class LargeMiddle < ApplicationRecord
end
