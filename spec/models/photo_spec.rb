# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  photographer_id    :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe Photo, :type => :model do
  it { should have_many(:descriptions) }
  it { should belong_to(:photographer) }
  it { should belong_to(:description) }
  it { should have_attached_file(:image) }
  it { should validate_attachment_content_type(:image).
       allowing('image/png', 'image/gif').
       rejecting('text/plain', 'text/xml') }
  it { should validate_attachment_size(:image).less_than(2.megabytes) }
end
