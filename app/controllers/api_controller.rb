class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  private

  def authenticated?
    authenticate_or_request_with_http_basic do |username, password|
      if user = User.find_by_username(username)
        user.authenticate(password).present?
      else
        false
      end
    end
  end

  def permission_denied_error
    error(403, 'Permission Denied!')
  end

  def error(status, message = 'Something went wrong')
    response = {
      response_type: "ERROR",
      message: message
    }

    render json: response.to_json, status: status
  end

end
