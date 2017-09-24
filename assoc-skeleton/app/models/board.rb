# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Board < ApplicationRecord
  has_many :memberships,
    class_name: 'BoardMembership',
    foreign_key: :board_id

  belongs_to :company,
    class_name: 'Company',
    foreign_key: :company_id

  has_many :members,
    through: :memberships,
    source: :member

  has_one :exchange,
    through: :company,
    source: :exchange

end
