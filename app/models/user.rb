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

class User < ActiveRecord::Base
  has_many :photos, foreign_key: :photographer_id
  has_many :descriptions, foreign_key: :author_id
end
