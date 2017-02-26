# == Schema Information
#
# Table name: tabs
#
#  id     :integer          not null, primary key
#  status :integer          default(0)
#

class Tab < ApplicationRecord
  has_many :large_tabs
  has_many :large_categories, through: :large_tabs
  has_many :products
end
