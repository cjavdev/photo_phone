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
  it { should belong_to(:author) }
  it { should belong_to(:photo) }
end
