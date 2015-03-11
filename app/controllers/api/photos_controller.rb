module Api
  class PhotosController < ApiController
    def index
      @photos = Photo.order(id: :desc).limit(10)
    end

    def next
      @photo = Photo.find(Photo.ids.sample)
      render :show
    end

    def show
      @photo = Photo.find(params[:id])
    end
  end
end
