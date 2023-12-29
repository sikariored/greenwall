class AddEncryptedPasswordIvIndexAndEncryptedPasswordIvToSecureRecords < ActiveRecord::Migration[7.1]
  def change
    add_column :secure_records, :encrypted_password_iv, :string
    add_index :secure_records, :encrypted_password_iv, unique: true
  end
end
