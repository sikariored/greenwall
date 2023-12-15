class RegistrationsController < Devise::RegistrationsController
  skip_before_action :require_no_authentication
  before_action :require_admin, only: [:new]

  private

  def require_admin
    unless current_account.admin?
      redirect_to root_path, alert: 'Доступ запрещён! Вы не администратор.'
    end
  end
end