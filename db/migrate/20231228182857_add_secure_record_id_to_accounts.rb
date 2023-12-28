class AddSecureRecordIdToAccounts < ActiveRecord::Migration[7.1]
  def change
    add_reference :accounts, :secure_record, foreign_key: true
  end
end
