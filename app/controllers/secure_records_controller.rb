class SecureRecordsController < ApplicationController
  def index
    @all_secure_records = SecureRecord.all
  end

  def new
    @secure_record = SecureRecord.new
    @gwk = ENV['G1W2SK']
  end

  def create
    @secure_record = SecureRecord.new secure_record_params
    if @secure_record.save
      redirect_to secure_records_path
      flash[:notice] = "Запись создана"
    else
      render :new
      flash[:alert] = "Ошибка при создании записи"
    end
  end

  private

  def secure_record_params
    params.require(:secure_record).permit(:login, :password, :resource, :account_id)
  end
end