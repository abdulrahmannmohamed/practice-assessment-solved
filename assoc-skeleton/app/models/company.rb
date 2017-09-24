# == Schema Information
#
# Table name: companies
#
#  id            :integer          not null, primary key
#  name          :string
#  website       :string
#  market_cap    :float
#  ticker_symbol :string
#  exchange_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Company < ApplicationRecord
  has_one :board,
    class_name: 'Board',
    foreign_key: :company_id

  belongs_to :exchange,
    class_name: 'Exchange',
    foreign_key: :exchange_id,
    optional: true

  has_many :prices,
    class_name: 'Price',
    foreign_key: :company_id

  has_many :watch_list_items,
    class_name: 'WatchListItem',
    foreign_key: :company_id

  has_many :watch_lists,
    through: :watch_list_items,
    source: :watch_list

  has_many :watchers,
    through: :watch_lists,
    source: :user


end
