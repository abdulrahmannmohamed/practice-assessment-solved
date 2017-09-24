# == Schema Information
#
# Table name: exchanges
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Exchange, type: :model do
  subject(:nyse) { Exchange.first }
  
  it "has a company" do
    expect(nyse.companies.first.name).to eq("Google")
  end
end
