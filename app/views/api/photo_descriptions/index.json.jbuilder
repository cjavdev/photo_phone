json.array! @photos do |photo|
  json.extract!(photo, :id, :created_at, :photographer_id)
  json.url photo.image.url
  json.medium_url photo.image.url(:medium)
  json.thumb_url photo.image.url(:thumb)
  json.descriptions photo.descriptions do |description|
    json.extract!(description, :id, :body, :author_id)
  end
end
