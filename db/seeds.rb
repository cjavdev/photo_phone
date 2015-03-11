me = User.where(email: "cjavilla@gmail.com").first_or_create!
Photo.create!(
  photographer: me,
  image: File.open(Rails.root.join('app', 'assets', 'images', 'bottle.JPG'))
)

Description.create(
  author: me,
  photo: Photo.last,
  body: "Water Bottle"
)
