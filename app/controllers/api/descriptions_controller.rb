module Api
  class DescriptionsController < ApiController
    def index
      @descriptions = Description.order(id: :desc).limit(100)
      render json: @descriptions
    end

    def next
      @description = Description.find(Description.ids.sample)
      render json: @description
    end
  end
end
