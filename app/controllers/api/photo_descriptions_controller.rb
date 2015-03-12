module Api
  class PhotoDescriptionsController < ApiController
    def index
      @photos = Photo
        .includes(:descriptions)
        .order(id: :desc)
        .limit(15)
      render :index
    end
  end
end
