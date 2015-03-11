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

FactoryGirl.define do
  factory :user do
    
  end

end
