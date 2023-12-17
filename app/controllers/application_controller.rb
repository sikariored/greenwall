# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_account!
  before_action do
    I18n.locale = :ru
  end

  protected

  def configure_permitted_parameters
    attributes = [:name, :email, :role, :department, :department_id, role_ids: []]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
