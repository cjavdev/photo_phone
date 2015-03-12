module Api
  class ApiController < ApplicationController
    before_action :debugging
    skip_before_filter :verify_authenticity_token

    def current_user
      email = request.headers['X-USER-EMAIL']
      return nil if email.nil?
      @current_user ||= User.find_by(email: email)
    end

    def debugging
      puts "CURRENT USER"
      puts current_user.to_json
      puts request.headers['X-USER-EMAIL']
    end

    def require_user!
      if !current_user
        render json: { message: "Unauthorized", status: 401 }, status: 401
      end
    end
  end
end
