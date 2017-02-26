# == Schema Information
#
# Table name: large_tabs
#
#  id                :integer          not null, primary key
#  large_category_id :integer
#  tab_id            :integer
#
# Indexes
#
#  index_large_tabs_on_large_category_id  (large_category_id)
#  index_large_tabs_on_tab_id             (tab_id)
#

class LargeTab < ApplicationRecord
end
