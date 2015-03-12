module Api
  class PhotosController < ApiController
    before_action :require_user!

    def index
      @photos = Photo.order(id: :desc).limit(10)
    end

    def next
      @photo = Photo.find(Photo.ids.sample)
      render :show, locals: { show_descriptions: false }
    end

    def show
      @photo = Photo.find(params[:id])
      render :show, locals: { show_descriptions: true }
    end
  end
end
