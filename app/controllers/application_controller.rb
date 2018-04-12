class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name_sei, :name_mei, :name_kana_sei, :name_kana_mei, :birthday, :sex, :postal_code, :region, :street, :street_bunch, :room_no, :phone, :credit_card, :user_flg])
	end
end
