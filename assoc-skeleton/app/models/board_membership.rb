# == Schema Information
#
# Table name: board_memberships
#
#  id         :integer          not null, primary key
#  member_id  :integer
#  board_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BoardMembership < ApplicationRecord
  belongs_to :member,
    class_name: 'Executive',
    foreign_key: :member_id

  belongs_to :board,
    class_name: 'Board',
    foreign_key: :board_id
end
