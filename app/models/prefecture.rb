# == Schema Information
#
# Table name: prefectures
#
#  id   :integer          not null, primary key
#  name :string(255)
#  area :integer          default(0)
#

class Prefecture < ApplicationRecord
end
