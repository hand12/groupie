# == Schema Information
#
# Table name: prefectures
#
#  id   :integer          not null, primary key
#  name :string(255)
#  area :integer          default("unknown")
#

class Prefecture < ApplicationRecord
  has_many :consumers
  enum area: { unknown: 0, hokkaido: 1, tohoku: 2, kanto: 3, tyubu: 4, kinki: 5, tyugoku: 6, shikoku: 7, kyushu: 8 }
end
