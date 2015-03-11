# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  email         :string
#  session_token :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_many(:photos) }
  it { should have_many(:descriptions) }
end
