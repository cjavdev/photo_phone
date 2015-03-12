json.partial! 'api/photos/photo', photo: @photo
if show_descriptions
  json.descriptions @photo.descriptions do |description|
    json.extract!(description, :id, :body, :author_id, :created_at)
  end
end
