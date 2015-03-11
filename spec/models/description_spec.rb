# == Schema Information
#
# Table name: descriptions
#
#  id         :integer          not null, primary key
#  photo_id   :integer
#  author_id  :integer
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Description, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
