module Api
  class PhotoDescriptionsController < ApiController
    before_action :require_user!

    def index
      @photos = Photo
        .includes(:descriptions)
        .order(id: :desc)
        .limit(15)
      render :index
    end
  end
end
