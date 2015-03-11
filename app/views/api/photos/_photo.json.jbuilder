json.extract!(photo, :id, :photographer_id)
json.original_url photo.image.url
json.medium_url photo.image.url(:medium)
json.thumb photo.image.url(:thumb)
