# == Schema Information
#
# Table name: large_categories
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class LargeCategory < ApplicationRecord
  has_many :large_tabs
  has_many :tabs, through: :large_tabs
  has_many :middle_categories
  has_many :products
end
