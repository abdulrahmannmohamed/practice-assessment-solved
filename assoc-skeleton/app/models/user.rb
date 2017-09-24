# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :watch_lists,
    class_name: 'WatchList',
    foreign_key: :user_id

  has_many :watch_list_items,
    through: :watch_lists,
    source: :watch_list_items

  has_many :watched_companies,
    through: :watch_list_items,
    source: :company
end
