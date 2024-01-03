class AccountsController < ApplicationController
  before_action :require_admin, only: %i[show edit update]

  def home
    @account = Account.find_by(id: params[:id])
  end

  def index
    @all_accounts = Account.all
    @account = Account.find_by params[:id]
  end

  def show
    @account = Account.find(params[:id])
    @account_department_access = @account.department_access.map {
                                    |department_access_id| Department.find(department_access_id).name}.join(", ")
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      redirect_to accounts_path
      flash[:notice] = "Данные аккаунта изменены"
    else
      render :edit
      flash[:alert] = "Ошибка при изменении данных аккаунта: #{@account.errors.full_messages}"
    end
  end

  private

  def account_params
    params.require(:account).permit(:name, :email, :role_id, :department_id, department_access: []).tap do |whitelisted|
      whitelisted[:department_access].reject!(&:blank?)
    end
  end

  def require_admin
    unless current_account.admin?
      redirect_to root_path, alert: 'Доступ запрещён! Вы не администратор.'
    end
  end
end