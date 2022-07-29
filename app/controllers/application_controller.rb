class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_customer!, unless: :admin_url
  # before_action :authenticate_admin!, if: :admin_url

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :first_name_kana, :last_name_kana, :post_code, :address, :phone_number] )
  end

  # def admin_url
  #   request.fullpath.include?("/admin")
  # end

end
