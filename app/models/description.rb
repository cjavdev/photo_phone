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

class Description < ActiveRecord::Base
  belongs_to :author, class_name: 'User'
  belongs_to :photo
end
