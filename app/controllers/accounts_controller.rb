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
      flash[:alert] = "Ошибка при изменении данных аккаунта"
    end
  end

  private
    def account_params
      params.require(:account).permit(:name, :email, :role_id, :department_id)
    end

  def require_admin
    unless current_account.admin?
      redirect_to root_path, alert: 'Доступ запрещён! Вы не администратор.'
    end
  end
end