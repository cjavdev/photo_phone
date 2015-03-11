module Api
  class PhotosController < ApiController
    def index
      @photos = Photo.order(id: :desc).limit(10)
      render json: @photos
    end
  end
end
