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

    def create
      @photo = current_user.photos.new(photo_params)

      if @photo.save
        render json: @photo
      else
        render json: @photo.errors.full_messages, status: :unprocessable_entity
      end
    end

    private

    def photo_params
      params.permit(:description_id, :image)
    end
  end
end
