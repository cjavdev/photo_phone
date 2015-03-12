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

class Photo < ActiveRecord::Base
  has_many :descriptions
  belongs_to :photographer, class_name: 'User'
  belongs_to :description

  has_attached_file(
    :image,
    styles: {
      medium: "300x300>",
      thumb: "100x100>"
    },
    default_url: "/images/:style/missing.png"
  )

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_with(
    AttachmentSizeValidator,
    attributes: :image,
    less_than: 2.megabytes
  )
end
