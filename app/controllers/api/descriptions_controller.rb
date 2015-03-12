module Api
  class DescriptionsController < ApiController
    def index
      @descriptions = Description.order(id: :desc).limit(100)
      render json: @descriptions
    end

    def create
      @description = current_user.descriptions.new(description_params)

      if @description.save
        render json: @description
      else
        render json: @description.errors.full_messages, status: 422
      end
    end

    def next
      @description = Description.find(Description.ids.sample)
      render json: @description
    end

    def show
      @description = Description.find(params[:id])
      render :show
    end

    private

    def description_params
      params.permit(:body, :photo_id)
    end
  end
end
