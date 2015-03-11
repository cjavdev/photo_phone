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

FactoryGirl.define do
  factory :photo do
    
  end

end
