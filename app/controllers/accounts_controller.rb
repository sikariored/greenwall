class AccountsController < ApplicationController

  def index
    @all_accounts = Account.all
    @account = Account.find_by(params[:id])
  end

  def show
    @account = Account.find(params[:id])
  end

  def update
    @account = current_account
    if @account.update_with_password(account_params)
      bypass_sign_in(@account)
      redirect_to account_path(@account)
    else
      flash[:error] = @account.errors.full_messages.join(", ")
      render :edit
    end
  end

    private
    def account_params
      params.require(:account).permit(:name, :email, :role, :department)
    end
end