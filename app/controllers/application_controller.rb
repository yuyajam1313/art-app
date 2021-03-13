class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_pemitted_parameters, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_pemitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :gender_id, :age_id, :profession_id])
  end

end
