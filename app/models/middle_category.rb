# == Schema Information
#
# Table name: middle_categories
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  large_category_id :integer
#
# Indexes
#
#  index_middle_categories_on_large_category_id  (large_category_id)
#

class MiddleCategory < ApplicationRecord
  belongs_to :large_category
end
