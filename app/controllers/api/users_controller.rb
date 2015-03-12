module Api
  class UsersController < ApiController
    def create
      @user = User.where(email: params[:email]).first_or_initialize
      if @user.save
        render json: @user
      else
        render json: {
          message: "Invalid User",
          errors: @uesr.errors.full_messages
        }, status: 422
      end
    end
  end
end
