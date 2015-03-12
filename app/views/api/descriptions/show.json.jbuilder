json.extract!(@description, :id, :created_at, :body)
json.photos @description.photos do |photo|
  json.original_url photo.image.url
  json.medium_url photo.image.url(:medium)
  json.thumb_url photo.image.url(:thumb)
end
