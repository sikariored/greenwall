class SecureRecordsController < ApplicationController
  def index
    @secure_records = SecureRecord.all
  end

  def new
    @secure_record = SecureRecord.new
  end

  def create
    @secure_record = SecureRecord.new(secure_record_params)
  end

  private

  def secure_record_params
    params.require(:secure_record).permit(:login, :password, :resource, :account_id)
  end
end