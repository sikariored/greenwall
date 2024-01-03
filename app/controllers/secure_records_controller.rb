class SecureRecordsController < ApplicationController
  def index
    @all_secure_records = SecureRecord.all
    @accessible_departments = current_account.department_access.map {|department_access_id| Department.find_by(id: department_access_id)}
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

  def edit
    @secure_record = SecureRecord.find(params[:id])
  end
  def update
    @secure_record = SecureRecord.find(params[:id])
    if @secure_record.update(secure_record_params)
      redirect_to secure_records_path
      flash[:notice] = "Запись обновлена"
    else
      render :edit
      flash[:alert] = "Ошибка при обновлении записи"
    end
  end

  def destroy
    @secure_record = SecureRecord.find(params[:id])
    if @secure_record.destroy
      redirect_to secure_records_path
      flash[:notice] = "Запись удалена"
    else
      flash[:alert] = "Ошибка при удалении записи"
      render :edit
    end
  end

  private

  def secure_record_params
    params.require(:secure_record).permit(:login, :password, :resource, :account_id, :comment)
  end
end