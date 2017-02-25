# == Schema Information
#
# Table name: prefectures
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  area       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Prefecture < ApplicationRecord
end
